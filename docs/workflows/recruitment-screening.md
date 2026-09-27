[← All workflows](README.md) · [VYR Agent OS](../../README.md)

# Recruitment Screening

## When application review is hard to keep consistent

For recruiters who need a reviewable evidence summary before making decisions. Compare submitted evidence with written criteria and coordinate only approved next steps.

**[Discuss recruitment administration with VYR →](https://vyrwork.com/contact?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=recruitment-screening_top)**

**Status: BUILT FOR YOU.** Build-to-order evidence triage; recruiters own progression, interview and rejection decisions. Status checked 27 September 2026 against [VYR's workflow page](https://vyrwork.com/agent-os/recruitment-flow?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=recruitment-screening_source).

## What the workflow would help you achieve

Prepare a transparent application review and coordinate recruiter-approved interviews.

## How the work moves

Evidence mapping preserves what the applicant actually provided. Triage describes gaps rather than inventing qualifications. The recruiter decides; scheduling receives only approved next steps.

```mermaid
flowchart LR
A["Intake agent"]
B["Evidence agent"]
C["Triage agent"]
D["Review coordinator"]
E["Scheduling agent"]
H{"Recruiter decision"}
O(["Reviewable evidence map and a human-owned next step"])
A -->|permitted evidence| B
B -->|criterion map| C
C -->|uncertainty flags| D
D --> H
H -->|explicit interview approval| E
E --> O
classDef agent fill:#f6f0e6,stroke:#9f7557,color:#222222
classDef human fill:#ffe8b6,stroke:#b57821,color:#222222
classDef outcome fill:#e3eee6,stroke:#4e775c,color:#222222
class A,B,C,D,E agent
class H human
class O outcome
```

This is a simplified service illustration. It is not a screenshot or a claim about the exact deployed agent roster.

**Your team stays in control:** A recruiter or hiring manager owns every shortlist, interview, rejection and override.

**Scope boundary:** Do not infer protected characteristics or make autonomous employment decisions.

## A conversation starter

Illustrative scenario: an applicant demonstrates the core skill but lists no relevant certification. The evidence map labels that criterion 'not supplied'. The recruiter decides whether to request clarification or approve an interview.

This example is fictional; it is not a customer result or a promise of measured savings.

## What VYR would scope with you

Your role criteria, submitted materials, applicant system and recruiter decision process.

VYR reviews the current steps, the integration access available, the human decisions and an observable completion condition. Compatibility, timing and final deliverables are confirmed in the written scope.

## Consider the business case

Estimate the time this process consumes, the review that would remain, and whether freed capacity would avoid a paid cost. [See the ROI and staffing-capacity examples](../../ROI.md).

## Take the next step

**[Discuss recruitment administration with VYR →](https://vyrwork.com/contact?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=recruitment-screening_bottom)**

Prefer a short conversation? [WhatsApp VYR](https://wa.me/6598176520?text=Hi%20VYR%2C%20I%20found%20your%20Recruitment%20Screening%20workflow%20on%20GitHub.%20I%20would%20like%20to%20discuss%20automating%20a%20business%20process.). Tell us which process takes time, the systems involved and the exception your team most often has to resolve.

[Packages and pricing](https://vyrwork.com/pricing?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=recruitment-screening_pricing) · [What happens after an enquiry](../../BUYERS_GUIDE.md) · [Explore all 14 workflows](README.md)
