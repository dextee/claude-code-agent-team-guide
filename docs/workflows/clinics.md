[← All workflows](README.md) · [VYR Agent OS](../../README.md)

# Clinic Front Desk

## When appointment administration takes staff away from patients

For clinics exploring help with booking and reminders while keeping clinical matters with staff. Organise administrative requests, availability and follow-up around the clinic's approval rules.

**[Discuss your clinic front desk with VYR →](https://vyrwork.com/contact?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=clinics_top)**

**Status: BUILT FOR YOU.** Build-to-order administrative workflow; no deployed clinic result is claimed. Status checked 27 September 2026 against [VYR's workflow page](https://vyrwork.com/agent-os/clinic-flow?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=clinics_source).

## What the workflow would help you achieve

Resolve appointment administration while keeping clinical questions with clinic staff.

## How the work moves

Intake routes administrative requests to schedule. Confirmation returns details for acceptance; exception checks can interrupt the path at any point. Record consumes only the permitted administrative outcome.

```mermaid
flowchart LR
A["Intake agent"]
B["Schedule agent"]
C["Confirmation agent"]
D["Exception agent"]
E["Record agent"]
H{"Authorised clinic staff"}
O(["Correct administrative record or a contextual staff handoff"])
A -->|administrative intent| B
B -->|valid slots| C
C -->|accepted permitted outcome| E
E --> O
A -->|clinical or sensitive| D
C -->|exception| D
D --> H
classDef agent fill:#f6f0e6,stroke:#9f7557,color:#222222
classDef human fill:#ffe8b6,stroke:#b57821,color:#222222
classDef outcome fill:#e3eee6,stroke:#4e775c,color:#222222
class A,B,C,D,E agent
class H human
class O outcome
```

This is a simplified service illustration. It is not a screenshot or a claim about the exact deployed agent roster.

**Your team stays in control:** Clinic staff own clinical judgment, identity decisions, sensitive records and exceptional release.

**Scope boundary:** No diagnosis, symptom triage or clinical advice. Booking-system compatibility requires assessment.

## A conversation starter

Illustrative scenario: a patient asks to move an appointment to Friday. A matching slot is proposed. When the patient also asks whether new symptoms require treatment, the agent passes that question to staff instead of interpreting it.

This example is fictional; it is not a customer result or a promise of measured savings.

## What VYR would scope with you

Your booking system, administrative requests, staff owners and sensitive exceptions.

VYR reviews the current steps, the integration access available, the human decisions and an observable completion condition. Compatibility, timing and final deliverables are confirmed in the written scope.

## Take the next step

**[Discuss your clinic front desk with VYR →](https://vyrwork.com/contact?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=clinics_bottom)**

Prefer a short conversation? [WhatsApp VYR](https://wa.me/6598176520?text=Hi%20VYR%2C%20I%20found%20your%20Clinic%20Front%20Desk%20workflow%20on%20GitHub.%20I%20would%20like%20to%20discuss%20automating%20a%20business%20process.). Tell us which process takes time, the systems involved and the exception your team most often has to resolve.

[Packages and pricing](https://vyrwork.com/pricing?utm_source=github&utm_medium=referral&utm_campaign=agent_os_workflows&utm_content=clinics_pricing) · [What happens after an enquiry](../../BUYERS_GUIDE.md) · [Explore all 14 workflows](README.md)
