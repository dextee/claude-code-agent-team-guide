# Workflow illustration prompts

Prepared 27 September 2026. Requested model: **GPT Image 2.5 Sunburst** (`gpt-image-2.5-sunburst`). Generation status is recorded separately in [ARTWORK.md](ARTWORK.md). A prompt file does not establish which model produced an image.

These 14 original prompts preserve the source maturity labels and use one coherent visual system. The [JSONL prompt set](prompts.jsonl) is ready for the image skill CLI after a local API key and model access are configured. The CLI batch uses `size: auto`; each prompt requests a landscape 16:9 composition. Actual output dimensions must be checked after generation.

## 01. AI Receptionist

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 01 / 14
Title (verbatim): "AI Receptionist"
Status badge (verbatim): "DEMO"
Status subtitle (verbatim): "Working voice software using sample business data; no live booking connection."
Goal (verbatim): "Turn an inbound call into a correct sample booking or a useful staff handoff."
Five role card labels (verbatim): "Concierge", "Knowledge", "Availability", "Booking", "Handoff"
Graph direction and topology: Show two parallel branches from Concierge to Knowledge and Availability, joining at Booking. A separate amber exception arrow leads from Concierge to Handoff and a human staff marker. The booking outcome must say SAMPLE BOOKING.
Role meaning to inform the illustration, do not reproduce long prose:
Concierge: Call + supported-language list -> Intent, language and minimum contact details
Knowledge: Intent + approved sample FAQs -> Supported answer with a source reference
Availability: Service + requested time -> Valid options from the sample calendar
Booking: Selected sample slot + caller confirmation -> Sample booking record and read-back
Handoff: Unsupported request + conversation summary -> Reason, unresolved question and staff queue item
Outcome (verbatim): "Sample booking plus read-back, or a staff-ready handoff."
Boundary (verbatim): "Every booking is a simulation. Do not represent a sample slot as a real appointment."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```

## 02. Content Operations

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 02 / 14
Title (verbatim): "Content Operations"
Status badge (verbatim): "LIVE"
Status subtitle (verbatim): "Live eleven-agent pipeline; new generation is currently paused behind an approval backlog."
Goal (verbatim): "Prepare a sourced article and release only the version an editor approves."
Five role card labels (verbatim): "Planner", "Research", "Writer", "Review", "Release"
Graph direction and topology: A five-card sequential path Planner > Research > Writer > Review > Release. An amber EDITOR APPROVAL gate separates Review and Release. A curved revision arrow returns Review to Writer. Add a small visible status line: New generation paused for approval backlog.
Role meaning to inform the illustration, do not reproduce long prose:
Planner: Keyword + audience + page inventory -> Brief and search-intent overlap decision
Research: Cleared brief + public sources -> Evidence packet and outline
Writer: Outline + evidence + house style -> Draft with traceable claims
Review: Draft + page inventory -> Metadata, link and claim findings
Release: Exact approved article + reviewer decision -> Published route and verification receipt
Outcome (verbatim): "Approved article, verified route and recorded review decision."
Boundary (verbatim): "Backlog pause remains visible; a prepared draft is not a live page or a ranking result."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```

## 03. Lead Generation

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 03 / 14
Title (verbatim): "Lead Generation"
Status badge (verbatim): "LIVE"
Status subtitle (verbatim): "Public-source prospect research, enrichment, deduplication and mailbox checks; outreach is excluded."
Goal (verbatim): "Deliver a sourced prospect list that a sales owner can review."
Five role card labels (verbatim): "Brief", "Research", "Enrichment", "Verification", "Delivery"
Graph direction and topology: Five linked role cards Brief > Research > Enrichment > Verification > Delivery, with a SALES REVIEW gate before Delivery. Show a small duplicate record peeled off at Enrichment. Outcome label: REVIEWED CSV. Footer boundary: No outreach sent.
Role meaning to inform the illustration, do not reproduce long prose:
Brief: Approved ICP + exclusions -> Search criteria and required evidence
Research: Criteria + public business sources -> Candidate companies with source URLs
Enrichment: Candidates + prior-record inventory -> Business context and duplicate decisions
Verification: Candidate contact fields -> Mailbox-check status with uncertainty
Delivery: Sales-reviewed records -> Scored CSV and source context
Outcome (verbatim): "Reviewable CSV with evidence, verification state and exclusions."
Boundary (verbatim): "Mailbox verification does not prove consent, buyer interest or guaranteed delivery. No messages are sent."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```

## 04. Social Command Center

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 04 / 14
Title (verbatim): "Social Command Center"
Status badge (verbatim): "LIVE"
Status subtitle (verbatim): "Live FeedHive telemetry is read-only; new writes use a separate approval-bound publisher."
Goal (verbatim): "Turn approved content into a controlled release and observe its actual delivery."
Five role card labels (verbatim): "Source", "Channel writer", "Brand review", "Publisher", "Observer"
Graph direction and topology: Two distinctly bounded lanes. Upper lane APPROVED RELEASE: Source > Channel writer > Brand review > HUMAN APPROVAL > Publisher. Lower lane READ-ONLY COMMAND CENTER: FeedHive evidence > Observer > Delivery report. Publisher may point to FeedHive; Observer must have no arrow back to publishing.
Role meaning to inform the illustration, do not reproduce long prose:
Source: Approved owned content -> Source packet and usage context
Channel writer: Source packet + platform rules -> Channel-specific copy and image proposal
Brand review: Proposed content + brand rules -> Supported claims and release manifest
Publisher: Named-human approval + exact manifest -> Revalidated FeedHive write and receipt
Observer: Read-only FeedHive snapshots -> Delivery state, audience and measurement report
Outcome (verbatim): "Approved release receipt and a separate read-only delivery report."
Boundary (verbatim): "The command center itself cannot create, approve, edit, schedule or delete posts."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```

## 05. Clinic Front Desk

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 05 / 14
Title (verbatim): "Clinic Front Desk"
Status badge (verbatim): "BUILT FOR YOU"
Status subtitle (verbatim): "Build-to-order administrative workflow; no deployed clinic result is claimed."
Goal (verbatim): "Resolve appointment administration while keeping clinical questions with clinic staff."
Five role card labels (verbatim): "Intake", "Schedule", "Confirmation", "Exception", "Record"
Graph direction and topology: Main path Intake > Schedule > Confirmation > Record. Amber branch from Intake and Confirmation to Exception > CLINIC STAFF. Show accepted administrative decision before Record. Footer: Administration only.
Role meaning to inform the illustration, do not reproduce long prose:
Intake: Approved channel + booking request -> Administrative intent and supplied constraints
Schedule: Practitioner schedule + constraints -> Available appointment options
Confirmation: Chosen option + administrative policy -> Booking or reminder proposal
Exception: Clinical, identity or sensitive-record issue -> Authorised-staff handoff
Record: Confirmed administrative decision -> Booking state, reminder and audit entry
Outcome (verbatim): "Correct administrative record or a contextual staff handoff."
Boundary (verbatim): "No diagnosis, symptom triage or clinical advice. Booking-system compatibility requires assessment."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```

## 06. Invoice Processing

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 06 / 14
Title (verbatim): "Invoice Processing"
Status badge (verbatim): "BUILT FOR YOU"
Status subtitle (verbatim): "Build-to-order invoice review and Xero draft integration; payment authority stays with finance."
Goal (verbatim): "Convert an invoice into a reviewed accounting draft with explainable exceptions."
Five role card labels (verbatim): "Capture", "Extraction", "Matching", "Exception", "Ledger"
Graph direction and topology: Capture > Extraction > Matching > Exception > FINANCE APPROVAL > Ledger. Feed PO and Receipt mini-documents into Matching. Outcome label: XERO DRAFT. Boundary: No payment authority.
Role meaning to inform the illustration, do not reproduce long prose:
Capture: Invoice + original source -> Source-preserved document record
Extraction: Document record -> Supplier, amount, tax and line-item fields
Matching: Extracted fields + PO + receipt -> Variance and possible-duplicate report
Exception: Mismatches + finance rules -> Finance review packet
Ledger: Finance-approved coding -> Draft Xero entry and integration receipt
Outcome (verbatim): "Reviewed ledger draft with source and exception history."
Boundary (verbatim): "No bank access or automatic payment. Extraction confidence does not establish invoice validity."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```

## 07. Customer Support

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 07 / 14
Title (verbatim): "Customer Support"
Status badge (verbatim): "BUILT FOR YOU"
Status subtitle (verbatim): "Build-to-order support triage, grounded replies and controlled release."
Goal (verbatim): "Get each enquiry to a supported answer or the right person with full context."
Five role card labels (verbatim): "Intake", "Triage", "Knowledge", "Reply", "Case"
Graph direction and topology: Intake splits to Triage and Knowledge; both feed Reply. Reply > HUMAN RELEASE > Case. An amber exception path leads from Reply to SUPPORT STAFF. Output: Answer or contextual escalation.
Role meaning to inform the illustration, do not reproduce long prose:
Intake: Message + permitted account context -> Case record and prior-thread summary
Triage: Case + priority rules -> Intent, urgency and queue owner
Knowledge: Question + approved documentation -> Relevant evidence and missing-information flags
Reply: Evidence + response policy -> Grounded draft with cited source
Case: Release decision or escalation -> Sent-message receipt or staff-owned case
Outcome (verbatim): "Evidence-backed reply or a useful escalation, with the case state updated."
Boundary (verbatim): "No invented policy answers, automatic compensation or bypass of identity checks."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```

## 08. HR Operations

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 08 / 14
Title (verbatim): "HR Operations"
Status badge (verbatim): "BUILT FOR YOU"
Status subtitle (verbatim): "Build-to-order onboarding and policy routing; Talenox or Payboy integration is scoped and tested."
Goal (verbatim): "Make a new starter's onboarding complete, attributable and reviewable."
Five role card labels (verbatim): "Case", "Documents", "Tasks", "Policy", "Completion"
Graph direction and topology: Case fans out into three parallel cards Documents, Tasks, Policy. They join at Completion. An HR REVIEW amber side gate handles exceptions; label the join OWNER CONFIRMATIONS. Outcome: Verified checklist.
Role meaning to inform the illustration, do not reproduce long prose:
Case: Approved starter brief -> Role-specific onboarding checklist
Documents: Checklist + submitted documents -> Required-document status and gaps
Tasks: Checklist + named owners -> Equipment, access and manager tasks
Policy: Employee question + approved policies -> Supported answer draft or HR referral
Completion: Owner confirmations + HR decisions -> Verified onboarding state
Outcome (verbatim): "Completed checklist with owner confirmations, or an explicit outstanding-items list."
Boundary (verbatim): "No autonomous salary, payroll, performance, discipline or termination decisions."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```

## 09. Recruitment Screening

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 09 / 14
Title (verbatim): "Recruitment Screening"
Status badge (verbatim): "BUILT FOR YOU"
Status subtitle (verbatim): "Build-to-order evidence triage; recruiters own progression, interview and rejection decisions."
Goal (verbatim): "Prepare a transparent application review and coordinate recruiter-approved interviews."
Five role card labels (verbatim): "Intake", "Evidence", "Triage", "Review packet", "Scheduling"
Graph direction and topology: Intake > Evidence > Triage > Review packet > RECRUITER DECISION > Scheduling. Show a miniature criteria/evidence matrix. Outcome: Human-owned shortlist. Boundary: No automated rejection.
Role meaning to inform the illustration, do not reproduce long prose:
Intake: Submitted application + approved criteria -> Application record and permitted assessment fields
Evidence: Application record -> Criterion-by-criterion evidence map
Triage: Evidence map -> Review summary, uncertainty and near-match flags
Review packet: Summary + original evidence -> Recruiter decision packet
Scheduling: Explicit interview approval + calendars -> Agreed interview and coordination record
Outcome (verbatim): "Reviewable evidence map and a human-owned next step."
Boundary (verbatim): "Do not infer protected characteristics or make autonomous employment decisions."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```

## 10. F&B Supplier Reorder

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 10 / 14
Title (verbatim): "F&B Supplier Reorder"
Status badge (verbatim): "BUILT FOR YOU"
Status subtitle (verbatim): "Build-to-order operations blueprint; this case focuses on the detailed supplier-reorder path."
Goal (verbatim): "Prepare the right stock replenishment for a manager's decision."
Five role card labels (verbatim): "Stock", "Rules", "Supplier", "Order", "Receipt"
Graph direction and topology: Stock > Rules > Supplier > Order > MANAGER APPROVAL > Receipt. Feed OPEN ORDERS into Rules as a second input. Outcome: Approved supplier order. Boundary: No unapproved spend.
Role meaning to inform the illustration, do not reproduce long prose:
Stock: Inventory + usage signal -> Current stock observation and timestamp
Rules: Observation + thresholds + open orders -> Reorder need or already-covered decision
Supplier: Needed items + approved supplier register -> Quantity and supplier proposal
Order: Proposal + evidence -> Draft purchase order and exceptions
Receipt: Manager-approved release -> Order receipt and expected-delivery record
Outcome (verbatim): "Manager-approved order with traceable stock rationale."
Boundary (verbatim): "No unapproved spend or invented substitutions. Delivery remains unconfirmed until evidence arrives."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```

## 11. Tuition Trial Booking

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 11 / 14
Title (verbatim): "Tuition Trial Booking"
Status badge (verbatim): "BUILT FOR YOU"
Status subtitle (verbatim): "Build-to-order enquiry and trial-class booking workflow; placement stays with centre staff."
Goal (verbatim): "Match a parent's enquiry to a genuinely available trial class."
Five role card labels (verbatim): "Enquiry", "Schedule", "Options", "Staff handoff", "Booking"
Graph direction and topology: Enquiry > Schedule > Options > PARENT ACCEPTS > Booking. Branch Options to Staff handoff > CENTRE STAFF for placement exceptions. Outcome: Accepted trial slot.
Role meaning to inform the illustration, do not reproduce long prose:
Enquiry: Parent-supplied constraints -> Structured trial request
Schedule: Timetable + capacity + trial rules -> Available classes meeting the constraints
Options: Valid classes -> Clear options for parent acceptance
Staff handoff: Placement or child-specific question -> Contextual centre-staff referral
Booking: Accepted slot + applicable approval -> Trial record and permitted follow-up
Outcome (verbatim): "Accepted trial booking or a staff-owned placement question."
Boundary (verbatim): "No assessment of a child's ability or invented class capacity."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```

## 12. Lead Nurture

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 12 / 14
Title (verbatim): "Lead Nurture"
Status badge (verbatim): "BUILT FOR YOU"
Status subtitle (verbatim): "Build-to-order HubSpot follow-up workflow; there is no claimed live client deployment."
Goal (verbatim): "Prepare a relevant next contact for the deal owner's approval."
Five role card labels (verbatim): "Monitor", "Context", "Drafting", "Review packet", "Activity"
Graph direction and topology: Monitor > Context > Drafting > Review packet > SALES OWNER APPROVAL > Activity. A revision loop returns Review packet to Drafting. Outcome: Approved follow-up. Boundary: No autonomous outreach.
Role meaning to inform the illustration, do not reproduce long prose:
Monitor: Deal stage + inactivity rule -> Eligible follow-up case
Context: Permitted CRM notes + prior contact -> Relationship summary and missing-context flags
Drafting: Context + message policy -> Suggested next touch and rationale
Review packet: Draft + recipient + timing -> Deal-owner approval packet
Activity: Approved exact message -> Send receipt and scoped CRM update
Outcome (verbatim): "Approved follow-up with an activity record, or an explicit hold."
Boundary (verbatim): "A CRM record alone is not contact permission. Do not fabricate relationship history."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```

## 13. Compliance Evidence

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 13 / 14
Title (verbatim): "Compliance Evidence"
Status badge (verbatim): "BUILT FOR YOU"
Status subtitle (verbatim): "Build-to-order evidence preparation; it does not certify compliance or control effectiveness."
Goal (verbatim): "Give a reviewer a traceable evidence pack and an honest gap register."
Five role card labels (verbatim): "Collection", "Mapping", "Gap review", "Review packet", "Pack"
Graph direction and topology: Collection > Mapping > Gap review > Review packet > ACCOUNTABLE REVIEWER > Pack. A visible amber OPEN GAP document remains in final pack. Outcome: Reviewed evidence pack. Boundary: No certification claim.
Role meaning to inform the illustration, do not reproduce long prose:
Collection: In-scope events + documents -> Evidence records with source and timestamp
Mapping: Evidence + control register -> Proposed evidence-to-control links
Gap review: Mappings + evidence requirements -> Missing, stale or conflicting items
Review packet: Evidence + gaps + owners -> Accountable-review packet
Pack: Recorded reviewer conclusions -> Indexed evidence pack with unresolved gaps
Outcome (verbatim): "Reviewed evidence index with owners, dates and visible open gaps."
Boundary (verbatim): "No automated certification. An absent alert is not proof that a control works."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```

## 14. Beauty & Wellness

```text
Use case: infographic-diagram.
Asset type: one finished landscape 16:9 workflow infographic for an editorial field guide, target 2560 x 1440.
Design a world-class, publication-ready infographic showing specialised AI agents collaborating toward one concrete business goal. A coherent premium visual language: warm ivory background, near-black charcoal typography, muted copper connectors, restrained sage automation labels, amber human decision gates. Beautiful small tactile 3D business objects and precisely aligned flat information cards. Generous whitespace, rigorous Swiss editorial grid, large highly legible typography, elegant arrows with unambiguous direction. The workflow must be understandable at a glance. Use physical artifacts such as source cards, calendar slots, document packets and review receipts to convey information passing between agents. No robots, brains, neon sci-fi, stock-photo collage, fake product screenshot, metrics or fabricated results.
Composition: top 22% title, maturity badge, one-line goal. Middle 60% the requested collaboration graph, 5 role cards and a clearly different HUMAN or decision marker; label each short role name exactly. Bottom 18% outcome, boundary and attribution. Limit secondary text to the supplied text; no dense paragraphs. Keep all elements within a 5% safe margin. Every arrow must terminate cleanly at the correct card. Do not imply human approvals are performed by an AI agent.
These are educational role designs based on VYR's public workflow descriptions, not screenshots or audited deployment internals. Footer text exactly: "VYR WORKFLOW ATLAS  /  Illustrative agent design  /  27 SEP 2026".

Workflow number: 14 / 14
Title (verbatim): "Beauty & Wellness"
Status badge (verbatim): "BUILT FOR YOU"
Status subtitle (verbatim): "Build-to-order salon booking and package-reference workflow; no running salon deployment is claimed."
Goal (verbatim): "Coordinate service, therapist, room and package information into a valid booking."
Five role card labels (verbatim): "Concierge", "Roster", "Package", "Booking", "Follow-up"
Graph direction and topology: Concierge splits to Roster and Package; both feed Booking, then Follow-up. Amber STAFF REVIEW branch before Booking for exceptions. Show therapist, room and duration icons feeding Roster. Outcome: Valid appointment.
Role meaning to inform the illustration, do not reproduce long prose:
Concierge: Service + preferences -> Booking constraints and minimum details
Roster: Therapist + room + duration calendar -> Feasible appointment slots
Package: Permitted customer package record -> Balance reference and applicable session rules
Booking: Valid slot + package context + acceptance -> Approved appointment proposal
Follow-up: Confirmed booking + reminder policy -> Permitted reminder or rebooking task
Outcome (verbatim): "Valid appointment and permitted follow-up, or a staff-owned exception."
Boundary (verbatim): "Package lookup is not refund authority. No treatment advice or unsupported availability."
Use concise text at full legibility. Do not add model names, provider logos or claims that the underlying VYR workflow uses a particular model. Preserve the maturity label accurately.
```
