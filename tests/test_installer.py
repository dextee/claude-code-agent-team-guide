"""Exercise installer behavior in disposable folders; no Claude calls or network."""
import json
import os
from pathlib import Path
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / 'plugins' / 'agent-team'
PRESET = json.loads((SOURCE / 'recommended-settings.json').read_text())


class InstallerTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory(prefix='claude-guide-test-')
        self.addCleanup(self.temp.cleanup)
        self.base = Path(self.temp.name)
        self.config = self.base / 'isolated-config'

    def run_install(self, *args):
        env = {**os.environ, 'CLAUDE_CONFIG_DIR': str(self.config)}
        result = subprocess.run(['bash', str(ROOT / 'install.sh'), *args],
                                env=env, capture_output=True, text=True)
        self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
        return result.stdout

    def write_settings(self, value):
        self.config.mkdir(parents=True, exist_ok=True)
        (self.config / 'settings.json').write_text(json.dumps(value))

    def settings(self):
        return json.loads((self.config / 'settings.json').read_text())

    def check_agents(self, folder):
        files = sorted(folder.glob('*.md'))
        self.assertEqual(len(files), 5)
        for path in files:
            self.assertEqual(path.read_bytes(), (SOURCE / 'agents' / path.name).read_bytes())

    def test_fresh_install_and_repeat(self):
        self.run_install()
        self.check_agents(self.config / 'agents')
        self.assertEqual(self.settings(), PRESET)
        self.assertNotIn('effortLevel', self.settings())
        self.run_install()
        self.assertEqual(self.settings(), PRESET)
        self.assertFalse(list((self.config / 'agents').glob('*.bak-*')))

    def test_existing_preferences_survive_nested_merge(self):
        existing = {'model': 'claude-opus-5', 'effortLevel': 'high',
                    'theme': 'dark', 'env': {'CUSTOM_FLAG': 'keep'},
                    'modelSettings': {'claude-opus-5-5': {'effortLevel': 'low'}}}
        self.write_settings(existing)
        output = self.run_install()
        current = self.settings()
        self.assertEqual(current['model'], existing['model'])
        self.assertEqual(current['effortLevel'], 'high')
        self.assertEqual(current['modelSettings']['claude-opus-5-5']['effortLevel'], 'low')
        self.assertEqual(current['env']['CUSTOM_FLAG'], 'keep')
        self.assertEqual(current['env']['CLAUDE_CODE_SUBAGENT_MODEL'], 'claude-sonnet-5')
        self.assertIn('kept', output)
        backup = next(self.config.glob('settings.json.bak-*'))
        self.assertEqual(json.loads(backup.read_text()), existing)

    def test_force_updates_only_recommended_fields(self):
        self.write_settings({'model': 'claude-opus-5', 'theme': 'dark',
                             'modelSettings': {'claude-opus-5-5': {'effortLevel': 'high'}}})
        self.run_install('--force')
        current = self.settings()
        self.assertEqual(current['model'], 'claude-opus-5-5')
        self.assertEqual(current['modelSettings']['claude-opus-5-5']['effortLevel'], 'medium')
        self.assertEqual(current['theme'], 'dark')

    def test_agents_only_preserves_settings_bytes(self):
        self.write_settings({'custom': 'unchanged'})
        before = (self.config / 'settings.json').read_bytes()
        self.run_install('--agents-only')
        self.check_agents(self.config / 'agents')
        self.assertEqual((self.config / 'settings.json').read_bytes(), before)
        self.assertFalse(list(self.config.glob('settings.json.bak-*')))

    def test_dry_run_writes_nothing(self):
        self.run_install('--dry-run')
        self.assertFalse(self.config.exists())

    def test_project_install_and_agent_backup(self):
        project = self.base / 'project with spaces'
        agents = project / '.claude' / 'agents'
        agents.mkdir(parents=True)
        (agents / 'implementer.md').write_text('original custom agent')
        self.run_install('--project', str(project), '--agents-only')
        self.check_agents(agents)
        backup = next(agents.glob('implementer.md.bak-*'))
        self.assertEqual(backup.read_text(), 'original custom agent')
        self.assertFalse(self.config.exists())


if __name__ == '__main__':
    unittest.main(verbosity=2)
