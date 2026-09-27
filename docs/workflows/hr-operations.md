[← All workflows](README.md) · [VYR Agent OS](../../README.md)

# HR Operations

## When onboarding depends on chasing several people

For HR teams coordinating documents, equipment, access and manager tasks. Keep outstanding work and responsible owners visible until completion is confirmed.

**[Discuss your onboarding process with VYR →](https://vyrwork.com/contact?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=hr-operations_top)**

**Status: BUILT FOR YOU.** Build-to-order onboarding and policy routing; Talenox or Payboy integration is scoped and tested. Status checked 27 September 2026 against [VYR's workflow page](https://vyrwork.com/agent-os/hr-flow?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=hr-operations_source).

## What the workflow would help you achieve

Make a new starter's onboarding complete, attributable and reviewable.

## How the work moves

The case agent fans work out to documents, task coordination and policy support. Completion joins their evidence; assigned tasks do not count as completed tasks.

```mermaid
flowchart LR
A["Case agent"]
B["Document agent"]
C["Task coordinator"]
D["Policy agent"]
E["Completion agent"]
H{"HR review"}
O(["Completed checklist with owner confirmations, or an explicit outstanding-items list"])
A --> B
A --> C
A --> D
B -->|document state| E
C -->|owner confirmations| E
D -->|supported policy context| E
B -->|missing evidence| H
D -->|sensitive question| H
H -->|resolved decision| E
E -->|all required evidence present| O
classDef agent fill:#f6f0e6,stroke:#9f7557,color:#222222
classDef human fill:#ffe8b6,stroke:#b57821,color:#222222
classDef outcome fill:#e3eee6,stroke:#4e775c,color:#222222
class A,B,C,D,E agent
class H human
class O outcome
```

This is a simplified service illustration. It is not a screenshot or a claim about the exact deployed agent roster.

**Your team stays in control:** HR resolves missing evidence and sensitive exceptions, and retains all employment decisions.

**Scope boundary:** No autonomous salary, payroll, performance, discipline or termination decisions.

## A conversation starter

Illustrative scenario: a new starter has supplied the required documents, but IT has not confirmed access. Completion leaves onboarding open and identifies IT as the owner. An unusual employment-term question goes to HR.

This example is fictional; it is not a customer result or a promise of measured savings.

## What VYR would scope with you

Your onboarding checklist, HR system, task owners and exception process.

VYR reviews the current steps, the integration access available, the human decisions and an observable completion condition. Compatibility, timing and final deliverables are confirmed in the written scope.

## Take the next step

**[Discuss your onboarding process with VYR →](https://vyrwork.com/contact?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=hr-operations_bottom)**

Prefer a short conversation? [WhatsApp VYR](https://wa.me/6598176520?text=Hi%20VYR%2C%20I%20found%20your%20HR%20Operations%20workflow%20on%20GitHub.%20I%20would%20like%20to%20discuss%20automating%20a%20business%20process.). Tell us which process takes time, the systems involved and the exception your team most often has to resolve.

[Packages and pricing](https://vyrwork.com/pricing?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=hr-operations_pricing) · [What happens after an enquiry](../../BUYERS_GUIDE.md) · [Explore all 14 workflows](README.md)
