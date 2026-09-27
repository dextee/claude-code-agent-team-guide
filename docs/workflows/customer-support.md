[← All workflows](README.md) · [VYR Agent OS](../../README.md)

# Customer Support

## When enquiries bounce between inboxes and people

For teams answering repeated questions while managing complaints and policy exceptions. Prepare supported replies and route the difficult cases with their context attached.

**[Discuss your support workflow with VYR →](https://vyrwork.com/contact?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=customer-support_top)**

**Status: BUILT FOR YOU.** Build-to-order support triage, grounded replies and controlled release. Status checked 27 September 2026 against [VYR's workflow page](https://vyrwork.com/agent-os/support-flow?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=customer-support_source).

## What the workflow would help you achieve

Get each enquiry to a supported answer or the right person with full context.

## How the work moves

Triage chooses an owner while knowledge retrieves the relevant source. Reply joins those outputs. Missing evidence, complaints, refunds and policy exceptions go to staff before release.

```mermaid
flowchart LR
A["Intake agent"]
B["Triage agent"]
C["Knowledge agent"]
D["Reply agent"]
E["Case agent"]
H{"Support staff / release decision"}
O(["Evidence-backed reply or a useful escalation, with the case state updated"])
A -->|case context| B
A -->|question| C
B -->|intent and owner| D
C -->|cited evidence| D
D -->|draft or escalation| H
H -->|release or staff assignment| E
E --> O
classDef agent fill:#f6f0e6,stroke:#9f7557,color:#222222
classDef human fill:#ffe8b6,stroke:#b57821,color:#222222
classDef outcome fill:#e3eee6,stroke:#4e775c,color:#222222
class A,B,C,D,E agent
class H human
class O outcome
```

This is a simplified service illustration. It is not a screenshot or a claim about the exact deployed agent roster.

**Your team stays in control:** Support staff own sensitive cases and outbound actions requiring human release.

**Scope boundary:** No invented policy answers, automatic compensation or bypass of identity checks.

## A conversation starter

Illustrative scenario: a delivery question has a clear documented answer, so a draft is prepared. A refund request in the same thread changes the path: staff receive the policy source and customer context before any promise is made.

This example is fictional; it is not a customer result or a promise of measured savings.

## What VYR would scope with you

Your support channels, approved answers, ticketing system and escalation owner.

VYR reviews the current steps, the integration access available, the human decisions and an observable completion condition. Compatibility, timing and final deliverables are confirmed in the written scope.

## Consider the business case

Estimate the time this process consumes, the review that would remain, and whether freed capacity would avoid a paid cost. [See the ROI and staffing-capacity examples](../../ROI.md).

## Take the next step

**[Discuss your support workflow with VYR →](https://vyrwork.com/contact?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=customer-support_bottom)**

Prefer a short conversation? [WhatsApp VYR](https://wa.me/6598176520?text=Hi%20VYR%2C%20I%20found%20your%20Customer%20Support%20workflow%20on%20GitHub.%20I%20would%20like%20to%20discuss%20automating%20a%20business%20process.). Tell us which process takes time, the systems involved and the exception your team most often has to resolve.

[Packages and pricing](https://vyrwork.com/pricing?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=customer-support_pricing) · [What happens after an enquiry](../../BUYERS_GUIDE.md) · [Explore all 14 workflows](README.md)
