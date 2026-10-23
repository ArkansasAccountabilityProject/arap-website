# Sherwood CITY-2026-189: production completeness review

Prepared for Arkansas Accountability Project (ARAP), October 23, 2026. Review universe: the uploaded request-details PDF, four listed productions, and the uploaded prior analysis. This is a documentary completeness assessment, not a finding of a statutory violation. It does not establish what records the City searched for, held at receipt, withheld, lost, or never created.

## Assessment

**The supplied production partially answers the request but does not establish complete fulfillment.** It supplies a flight summary, page-access records, authentication records, and share-link creation/expiration records. It does not supply identifiable CAD/dispatch records, flight-path/altitude/distance telemetry, a comprehensive recording-metadata history, safety/exception records, airspace-restriction records, or outcome reports beyond the summary. The supplied request-details snapshot marks the request Completed and lists four files, but contains no category-specific no-records explanation, retention explanation, or statutory redaction rationale. These are apparent production and explanation gaps, not proof that additional records exist. [R pp. 1-4; S1-S4]

The most useful first inquiry is to resolve the search scope, category dispositions, preservation/retention, export filters and timezones, and readily available native files. Further mission-specific inquiries should follow those answers. There is no support here for claims of unauthorized surveillance, a security breach, unlawful sharing, intentional destruction, or a particular recipient's access.

## Sources and citation conventions

All PDF page numbers below are physical PDF pages, starting at 1. S1 row numbers exclude the header and restart on each data page. Request categories M01-M14 are reviewer labels: the portal text is not actually numbered, despite referring to a “numbered category.” The four agency productions accompany this publication as exact copies. Public request copies are labelled ARAP derivatives. Original hashes and public-file hashes are in `source-manifest.json`; the underlying prior analysis and original request remain in private source custody. They do not establish authenticity beyond the uploaded evidence or constitute a forensic chain of custody.

| ID | Original attachment | Locator / use |
|---|---|---|
| R | Sherwood Police Department, AR Records Requests - Request Details.pdf | 4 pages. Request pp. 1-3; submitted date/status p. 3; production list pp. 3-4. Snapshot printed October 13, 2026, 7:17 AM. |
| S1 | BRINC-SWPD Flight Summary Log-7 Oct 2026-Redacted.pdf | 6 image-based pages. Data pp. 1-3; corresponding Call Type pp. 4-6. Pair 1 with 4, 2 with 5, 3 with 6 by row position. |
| S2 | BRINC-SWPD Flight Log-8 Oct 2026-Redacted.pdf | 10 pages. Page-access events with visible IDs. |
| S3 | BRINC-SWPD Auth Log-8 Oct 2026-Redacted.pdf | 51 pages. Event-bearing pages 1-26 and 48-51; September Created at continuation pages 27-47. |
| S4 | BRINC-SWPD ShareLink Log-8 Oct 2026.xlsx | Sep 2026!A1:I12 and Oct 2026!A1:I2. Both sheets visible. |
| P | Sherwood-drone-analysis.md | Prior analysis dated October 13. A hypothesis/checklist to test, not independent evidence. |

## Request scope and temporal reconciliation

R requests existing records from the earliest available record of a launch, flight, deployment, test, training, demonstration, or operational use of the installed Sherwood DFR system **through receipt**. The portal shows Submitted Wednesday, October 7, 2026, but no receipt hour, offset, or separately confirmed City receipt. “Through October 7” is a practical calendar-day description, not a verified end-of-day boundary. The four uploads are dated October 9. The filenames' October 7/8 dates do not disclose the actual export time or filters. [R pp. 1, 3-4]

| Record | Earliest/latest visible activity | What the cutoff does and does not show |
|---|---|---|
| S1 | Earliest dated start August 19, 07:13; latest start October 7, 16:21, ending 16:34. One undated final row. Header explicitly CDT / UTC-5. | Includes six October 7 starts. No October 8 flight row is visible. Does not certify every flight through receipt or the entire October 7 day. |
| S2 | Visited at August 19, 14:51:02 (ID 81056, p. 1) through October 7, 21:17:17 (ID 94173, p. 9). The latest visit has no Left at or Duration. | These are page visits, not launches. Timezone is not specified. An October 8 filename does not mean October 8 events must appear. |
| S3 | Earliest Created at May 20, 21:11:37; earliest Login at May 20, 21:11:47 (ID 117268, p. 1). Latest Created/Login at October 8, 00:33:34 (ID 183075, p. 48). | Two events are printed October 8: IDs 183074 and 183075, at 00:33:09 and 00:33:34. These account for the difference between 550 total events and 548 dated no later than October 7 in the export's printed calendar. Neither 548 nor 550 is a confirmed receipt-bounded responsive count. |
| S4 | Creation September 2, 17:46:42 (ID 518, Sep!A12:D12) through October 7, 03:33:24 (ID 920, Oct!A2:D2). | Eleven September rows and one October row. No August sheet. Absence of an August sheet does not prove a missing share link or that no link ever existed. |

The Auth log's May/June entries show account activity before the earliest produced summary flight. They do not prove pre-August flights of the installed system. Conversely, August page activity continues after August 19 while S1's next dated block is September 1. Access can concern an existing flight object, so that difference is a reconciliation question, not proof of omitted August flights. No July event-bearing section is visible in S3; obtain filter/availability confirmation before calling that an omission. [S1 pp. 1-3; S2 p. 1; S3 pp. 1-6]

The two October 8 Auth timestamps could represent October 7 local activity if the audit export uses UTC. That is an unverified possibility, not a conversion applied in this review. The summary's CDT header must not be assumed to govern the other exports. Receipt time, each export timezone, extraction time, and filter end time are necessary before exact cross-file matching or an out-of-scope determination.

## Completeness matrix

Status meanings: **Partial** means some responsive content appears but the requested breadth is not demonstrated. **Not identified in supplied production** means no identifiable responsive record of that class was supplied here. Neither means never existed. **Unresolved** means the available evidence cannot resolve compliance or existence. The request expressly limits demands to existing records and does not seek underlying video/imagery. [R pp. 1-3]

| ID | Requested category / requirement | Produced evidence | Assessment and specific apparent gap | Priority |
|---|---|---|---|---|
| M01 | Logs for every launch or attempted launch, with times, duration, type, identifiers, locations, roles, reason and outcome [R p. 1] | S1 pp. 1-6 supplies dates/times, duration, User, Launch Address, drone/org names and Call Type. Flight ID, Location and Case ID are redacted. | Partial. No explicit attempt status, disposition/outcome, destination, separate dock or crew-role fields. Six blank call types; two zero-duration rows. Case/flight joins unavailable. Confirm whether start/end are launch/recovery times and whether aborted attempts are included. | 1 |
| M02 | System activity documenting launches, deployments, missions, attempts/aborts, cancellations, returns and completed flights [R p. 1] | S1 completed-looking rows; S2 page visits. | Partial. S2 is not a launch-state history. No identifiable cancellation/abort/return event export or status-transition history. Zero-duration rows cannot automatically be classified as aborts. | 1 |
| M03 | CAD/dispatch association and initiation method [R p. 1] | Call Type in S1; Case ID withheld. | Not identified as a separate CAD/dispatch production. A classification is not a CAD history. Need CAD/event records and existing automated/dispatcher/officer/pilot initiation fields, if maintained. | 1 |
| M04 | Who initiated, authorized, approved, piloted, supervised or remotely assisted each flight [R p. 1] | S1 User; S2 access accounts; S3 authentication accounts. | Partial. User/access/login does not establish pilot in command, authorizer or remote assistant. No role-linked mission authorization history identified. | 1 |
| M05 | Flight history/telemetry: paths, altitude, distance, duration and launch/landing coordinates [R p. 1] | S1 duration and textual launch address. | Partial. No identifiable paths, altitude, distance, landing coordinates or comparable detailed telemetry. A launch address is not the flight route or destination. | 1 |
| M06 | Existing recording metadata: capture, retention/deletion, evidence transfer, case association, livestream and availability [R pp. 1-2] | S2 includes eight sync video view page visits; S4 shows share-link creation/expiration settings. | Partial. No comprehensive capture/recording inventory, deletion/retention/evidence-transfer history or per-mission metadata. Access/share capability does not establish capture, retention, actual viewing or transfer. No underlying media requested. | 1 |
| M07 | Audit/activity logs of access to missions, live/recorded video, histories and records, with user/time/action/access type [R p. 2] | S2 562 events; S3 550 authentication events; S4 12 link rows. | Partial. General login is not mission access. show/mission labels need definitions. No identifiable viewer/recipient/download/export lifecycle audit. 28 S2 rows lack exit/duration; redactions block joins. Confirm all relevant event types and systems were searched. | 1 |
| M08 | Failed/aborted launches, emergency landings, comms/GPS/navigation/geofence/Remote ID/collision and safety exceptions [R p. 2] | No dedicated exception log identified. | Not identified in supplied production. Need existing exception records or category-specific search/no-records explanation. Cannot infer zero safety events from silence. | 1 |
| M09 | Flights restricted/delayed/cancelled/rerouted/prevented by FAA/LAANC/BVLOS/weather/airports/TFRs or other airspace restrictions [R p. 2] | None identifiable. | Not identified in supplied production. Need responsive event records if held, or category-specific explanation. A training or test label does not answer this request. | 1 |
| M10 | Existing daily/weekly/monthly/cumulative reports or dashboards of activity/outcomes [R p. 2] | S1 is a summary table of individual rows. | Partial. No other identifiable dashboard/report with deployments, response times, cancellations, arrests, apprehensions, search outcomes or other attributed results. Do not demand a newly calculated report. | 2 |
| M11 | Native or ordinary system-exported electronic format where readily available, including CSV/XLSX/JSON/PDF; avoid screenshots/individual printing [R p. 2] | Three PDFs and one XLSX. R p. 4 describes S2 and S3 as redacted copies of XLSX originals. | Unresolved format shortcoming. Native tabular versions of S2/S3 appear to have existed based on portal descriptions; S1 is image-based and split horizontally. PDF was explicitly permitted, so PDF delivery alone is not proof of a violation. Ask for available redacted native exports or an explanation of availability/conversion limits. | 1 |
| M12 | Preserve existing rolling/deletion-prone records; identify retention and earliest date available at receipt [R pp. 2-3] | No retention/preservation explanation visible. | Unresolved. Production dates/ranges do not establish retention settings, receipt-time availability or preservation steps. No evidence here proves destruction, before or after receipt. | 1 |
| M13 | Rolling production and supplementation [R p. 3] | Four listed files uploaded October 9; snapshot later says Completed. | Unresolved. Snapshot does not show whether anything remained under review, whether supplementation was planned, or whether other correspondence explained completion. | 2 |
| M14 | Segregable remainder, specific statutory basis for each withholding/redaction, and category no-records response [R p. 3] | Visible redactions across S1-S4; no explanatory basis in supplied six-file record. | Partial disclosure; rationale unresolved. Request field/category-specific bases, extent of withholding and each category's disposition. No-records statements and search descriptions may exist elsewhere; this review has not seen them. | 1 |

## Verified counts and what they measure

### Flight summary

Independent image/OCR recount gives **77 + 78 + 63 = 218 data rows** on S1 pp. 1-3. Pages 4-6 carry the matching Call Type column and do not add flights. There are **217 dated rows**, **one undated row**, **216 positive-duration rows**, and **two zero-duration rows**. These are summary rows; redacted IDs prevent independent distinct-flight deduplication. [S1 pp. 1-6]

The dated zero is Megan White, September 16, 13:30 (p. 1 row 77). The final undated zero is Christopher Perez (p. 3 row 63). Neither is proven to be an attempted or aborted launch. Six Call Type cells are visibly blank, at p. 1 rows 39, 74, 77; p. 2 row 53; p. 3 rows 44, 63. Their start times are September 25 23:03; September 16 22:43; September 16 13:30; September 8 18:47; September 1 11:31; and undated, respectively. These are source blanks rather than visibly marked redactions. [S1 paired pp. 1/4, 2/5, 3/6]

| Classification grouping | Rows |
|---|---:|
| Training only | 79 |
| Test Flight only | 35 |
| Maintenance/Test Flight | 4 |
| Civil Assist, Training | 1 |
| Other populated classifications | 93 |
| Blank Call Type | 6 |
| Total | 218 |

The 118 solely training/test/maintenance rows are 54.1% of 218 rows, not of airtime. Standalone classifications include 16 Suspicious Circumstance(s) / Person(s) / Vehicle(s), 13 Missing Person / Runaway, 10 Disturbance - Domestic, seven Directed Patrol - Commercial, one Directed Patrol - Residential and six Traffic Stop. These counts do not establish unique incidents, outcomes or policy compliance. [S1 pp. 4-6]

| User field | Rows |
|---|---:|
| Christopher Perez | 119 |
| Darren White | 43 |
| Megan White | 29 |
| Josh Clay | 12 |
| Dawson Mocek | 5 |
| Douglas Osborne | 2 |
| Emmanuel Donahue | 2 |
| Madelyn Walker | 2 |
| Heath Harville | 2 |
| Blank visible user | 2 |
| Total | 218 |

The Launch Address counts are 182 at 2201 E Kiehl Ave, Sherwood; 30 at 9924 Landers Rd, North Little Rock; two at Lynnewood Pl, Jacksonville; one at Rapid Water Dr, Sherwood; one at Thornhill Park, Thornhill Dr, Sherwood; and two blank. User is an attribution field, not proof of crew role or certification. Launch address alone proves neither flight footprint nor unauthorized cross-jurisdiction operations. [S1 pp. 1-3]

P's approximately 33.9 hours and approximately 9m25s mean positive duration are **not independently certified by this review**. OCR of narrow fractional-second cells produces decimal/character errors. No exact airtime sum or average is adopted here; request native numeric data. The visually checked duration endpoints are consistent with P: about 35 seconds on September 1 and 23m05s on September 15 at 13:01, Josh Clay / Missing Person / Runaway. Approximate duration statements must remain approximate. [S1 pp. 2-3, paired pp. 5-6]

### Page-access export

S2 has **562 distinct visible record IDs**, with per-page counts **23, 77, 78, 78, 78, 78, 78, 17, 52, 3**. Page types are **356 show + 197 mission + eight sync video view + one diagram = 562**. **28** rows show no Left at or Duration. Account counts are Perez 458, Darren White 42, Megan White 37, dedwards nine, Madelyn Walker two, Douglas Osborne one, Emmanuel Donahue one, and 12 with no visible email. Perez's share is 458/562 = 81.5% of page events. [S2 pp. 1-10]

The longest printed page duration is 40m48s (ID 90926, p. 2). Overlapping September 9 visits include IDs 86172 and 86173 (p. 6). Page durations cannot be summed as unique viewing time or airtime. show and mission visits do not independently establish video watching, downloads or retention. Visible flight-name labels include 2631-8, DAGR, 2634-1, DAGR-DFR and DAGR-DFR (TEMPORARY). These are labels, not a verified count of aircraft. [S2 pp. 1-10]

### Authentication export

S3 contains **550 distinct visible event IDs**: **264 Successful 2FA + 230 Successful login + 19 Unsuccessful login + 10 Failed 2FA + six code-resend + two password-change + 19 with unpopulated visible Type/Description = 550**. September timestamps printed horizontally on pp. 27-47 are not additional events. The two October 8 events contribute one Successful login and one Successful 2FA. The printed-date-through-October-7 subset therefore has 229 and 263, respectively, with other category counts unchanged, totaling 548. Receipt-bounded responsiveness remains unresolved. [S3 pp. 1-51, especially p. 48]

An exact count of 19 Unsuccessful login events requires matching the full description: substring matching “Successful login” would also match “Unsuccessful login” and inflate the successful count to 249. This review checked that parsing issue. An example of the authentication-stage pattern is IDs 158253/158254, August 31, 22:43:11/22:43:24: Successful login / False followed by Successful 2FA / True. False is not automatically a failed password attempt. [S3 p. 3]

Password changes IDs 161809/161810 have redacted user attribution (p. 20). Vendor-domain, fire-department and outside-police accounts appear (examples pp. 1, 3, 16-18, 22-25). Account presence does not establish permissions, mission access, completed authentication or inappropriate access. Network-derived Location labels are not independently verified physical locations. Donahue's August 31 to September 30 Login/Logout interval may reflect session/token behavior rather than 30 days of continuous use. Obtain definitions before interpreting these fields. [S3 p. 3 and throughout]

### Share-link workbook

S4 contains **12 data rows**, 11 in Sep 2026 and one in Oct 2026, excluding headers. **10 expired; two revoked.** All Device Type cells say Responder. Creator totals: Perez five, Darren White five, Megan White two. There are **three 30-minute, six one-hour, one two-hour, one four-hour and one eight-hour** configured windows, totaling **21.5 hours** by expiration minus creation. This is configured availability, not actual view time; revocation can shorten availability. [S4 Sep!A2:I12; Oct!A2:I2]

| ID | Sheet row | Creator | Creation (printed 2026) | Window | Status |
|---|---|---|---|---|---|
| 518 | Sep 12 | Darren White | Sep 2 17:46:42 | 1 hour | revoked |
| 532 | Sep 11 | Christopher Perez | Sep 3 14:45:09 | 1 hour | expired |
| 541 | Sep 10 | Darren White | Sep 3 18:06:42 | 2 hours | revoked |
| 572 | Sep 9 | Christopher Perez | Sep 6 17:20:30 | 30 minutes | expired |
| 575 | Sep 8 | Christopher Perez | Sep 7 14:07:23 | 30 minutes | expired |
| 582 | Sep 7 | Darren White | Sep 8 02:02:32 | 1 hour | expired |
| 587 | Sep 6 | Megan White | Sep 8 16:58:07 | 1 hour | expired |
| 598 | Sep 5 | Christopher Perez | Sep 9 06:25:46 | 30 minutes | expired |
| 661 | Sep 4 | Christopher Perez | Sep 12 04:41:08 | 1 hour | expired |
| 826 | Sep 3 | Darren White | Sep 26 02:50:48 | 8 hours | expired |
| 833 | Sep 2 | Megan White | Sep 27 18:53:08 | 1 hour | expired |
| 920 | Oct 2 | Darren White | Oct 7 03:33:24 | 4 hours | expired |

The Active Link column retains redacted URL text on all rows, including expired/revoked links. It is not evidence that links remain active. No recipient, delivery, viewer, access count, download, actual revocation timestamp or accessed-content field is present. Link creation establishes a sharing capability, not disclosure to an identified person. No link was tested. [S4 A:I, both sheets]

## Redactions and native-format limitations

| Source | Visible redaction / limitation | Consequence and targeted request |
|---|---|---|
| S1 pp. 1-3 | Flight ID replaced with REDACTED; Location and Case ID obscured by large black areas. | Cannot reconcile distinct flights, CAD cases, response locations or other logs. Request statutory basis for each field; segregable values; existing nonexempt identifiers. A stable substitute key would be useful if voluntarily supplied, but is not assumed to be an existing record or mandatory new compilation. |
| S2 pp. 1-10 | Flight UUID and URL portions redacted. Twelve rows have no visible email, which is not necessarily a redaction. | Flight-specific joins and scope of accessed object unavailable. Request bases and available nonexempt linking fields. Clarify source blanks separately. |
| S3 throughout; p. 20 example | IP addresses redacted; selected user-email blocks blacked out. Type/Description blanks occur separately. | Cannot verify network-origin claims or attribute some events. Request bases and treatment of segregable account/role information; do not reconstruct obscured identities. |
| S4 both sheets F:G, I | Device UUID, Serial and URL suffixes replaced by REDACTED. | Cannot connect sharing to aircraft or flight objects. Numeric share IDs remain available for follow-up. Request applicable bases and existing nonexempt joins. |

No field-level rationale or statutory citation is supplied in R or the four productions. That describes this review universe, not all communications the requester might have received. The spreadsheet's redacted cells do not make the workbook an unredacted native export.

S1's image-only table requires OCR and manual row pairing. S3's September Created at column prints onto 21 separate continuation pages. S2/S3 PDFs lose ordinary spreadsheet sorting/filtering and direct typed-data reconciliation. The portal expressly identifies XLSX source files for S2 and S3. Request redacted XLSX/CSV or an ordinary export preserving rows, field names, blank values, timestamps and available identifiers. Because R also permits PDF and qualifies format by ready availability, describe this as an unresolved native-format and usability shortcoming, not a categorical refusal or legal violation. [R pp. 2, 4]

## Verification of the prior analysis and inconsistencies

| Prior claim / issue | Independent result |
|---|---|
| 218 summary rows; 216 positive; six blank call types; classification, user and launch counts | Corroborated by row-position recount, OCR with visual checks and paired Call Type pages. Counts describe source rows, not independently deduplicated flights or incidents. |
| 562 access events; 28 absent exits; page-type/account counts | Corroborated by distinct-ID extraction and full export recount. |
| 550 Auth IDs and category breakdown | Corroborated, with horizontal continuation pages excluded. Added caveat: two events print October 8. |
| 12 links, 10 expired/two revoked, creators and 21.5-hour windows | Corroborated from both XLSX sheets. P's concise range Sep!A1:I12 includes the header; its later A2:H12 citations omit Active Link column I. Use A2:I12 / A2:I2 for whole-row link claims. |
| Approximately 33.9 hours / mean 9m25s | Not independently certified. Do not promote to exact figures. Native numeric export needed. |
| “Flight Log” wording | Title can mislead: the actual fields describe page visits, not a second flight inventory. |
| “Completed” versus breadth of requested records | Administrative status conflicts with an inference that everything requested has been explained. It does not itself prove improper closure; missing correspondence or no-records explanations could resolve this. |
| Summary Responder versus page flight names; earlier Auth history; different date endpoints | Unresolved cross-export differences, not proven contradictions. Need device/flight linkage, installed-system scope and export definitions. |

P primarily describes the exports. It does not establish that every requested category was fulfilled. Its suggested requests for training/site agreements, general access policies, approvals and vendor permissions may be useful **new or clarifying requests**, but not every such policy or agreement necessarily falls within CITY-2026-189's existing-record categories. Keep original-request completion separate from expanded research.

## Prioritized follow-up inquiry (ready to use)

To the custodian responsible for CITY-2026-189:

Thank you for the four records uploaded October 9. We are reviewing the response against the original request. The portal snapshot marks the request Completed. Please clarify whether that denotes final fulfillment and whether any additional response, withholding explanation, no-records statement or supplementation exists.

1. **Resolve each original category and preserve existing responsive records.** Please provide any remaining responsive existing records for the categories identified in the original request, particularly CAD/dispatch and initiation records; detailed flight history/telemetry; recording capture/retention/deletion/evidence-transfer metadata; launch-state and exception/safety records; airspace-related restriction records; and existing activity/outcome reports or dashboards. For each category, please identify whether records were produced, remain under review, were withheld, were not located, are no longer retained, or are held by another custodian. Where known, distinguish records never created from records formerly maintained and later deleted. Please identify the applicable retention period, earliest responsive date available at receipt, and any existing preservation/deletion records. Please continue to preserve responsive records already covered by the request.

2. **Clarify period and search coverage.** Please confirm the City's actual receipt date/time/timezone, systems and custodians searched, whether vendor-hosted records under the City's control were included, and the date filters, extraction times, timezone settings and installed-system/device scope used for each export. Please explain whether the earliest produced flight date, August 19, is the earliest available installed-system activity, and whether no-record periods are genuine absence, scope filtering or retention limits. The Auth export contains May/June account history and two events printed October 8 (183074/183075); please explain the boundary used. We are not requesting a newly created analysis.

3. **Provide available native exports and redaction bases.** The portal describes the Flight and Auth PDFs as redacted copies of XLSX files. Please provide readily available redacted XLSX/CSV or ordinary system exports for those records and the summary, preserving existing fields and rows, or explain format availability. Please identify the specific statutory basis for each withheld field or record, including Flight ID, Location, Case ID, flight/device UUID, serial, IP address, URL portions and selected account identities, and provide reasonably segregable nonexempt information. Please include existing field definitions/export documentation. Existing nonexempt linking identifiers would allow reconciliation; if feasible, a consistent substitute key would also help, without asking the City to create a required new record.

4. **Resolve concrete source anomalies.** Please provide existing mission/exception records associated with the two zero-duration rows and six blank Call Type rows listed in this review, and existing role/authorization/outcome records corresponding to the summary's User entries. Please clarify whether attempted, aborted, cancelled and return events are represented at all. Please explain the source meaning of show, mission, sync video view, diagram, Login (success), Created at and Logout at, and the 28 page records without exit/duration. General login counts do not answer access to particular mission content.

5. **Complete the original recording/access inquiry.** Please provide existing mission/video metadata and access/share lifecycle records within the original scope, including any retained access/view/download/export information associated with share IDs 518, 541, 826 and 920 and, if held, the other eight IDs. Please identify any existing recipient/delivery records that document making mission content available, actual revocation times and accessed-content identifiers. If these records are outside the original scope or not maintained, please clarify that rather than treating a link-creation row as proof of actual viewing. We continue to seek metadata, not the underlying video or images.

Please produce available records incrementally and identify any other custodian with administrative control. Explanatory questions above are intended to clarify the response; requests for production concern existing records and do not ask for new reports, calculations or reconstructed logs.

**Second-stage research, separately scoped if needed:** general drone/access/sharing policies; account-role and vendor-access grants; aircraft inventory/naming history; launch-site agreements; training/certification; retention schedules and configuration documentation. Prioritize share windows 826/920, revoked IDs 518/541, and source role/mission linkage before interpreting longer windows or external-domain accounts as improper conduct.

## Evidence ledger

| Evidence ID | Proposition | Exact locator | Finding class / limitation |
|---|---|---|---|
| E01 | Scope runs from earliest installed-system activity through receipt | R p. 1 opening paragraph | Direct request language; receipt hour not shown. |
| E02 | Request includes ten substantive record classes, native export, preservation, rolling production and redaction/no-records explanation | R pp. 1-3 | Reviewer categories M01-M14 are not original numbering. |
| E03 | Submitted Oct 7; Completed; four uploads dated Oct 9 | R pp. 3-4 | Snapshot as of Oct 13; no later status claim. |
| E04 | Flight/Auth PDFs described as copies of XLSX | R p. 4, File Description | Supports native-file inquiry; not proof of ready availability today. |
| E05 | 218 summary rows | S1 pp. 1-3: 77/78/63 rows | Independent recount; IDs withheld, uniqueness unresolved. |
| E06 | Two zero-duration rows | S1 p. 1 row 77; p. 3 row 63 | Source zero; attempt/abort inference unsupported. |
| E07 | Six blank call types | S1 p. 1 rows 39/74/77 paired p. 4; p. 2 row 53 paired p. 5; p. 3 rows 44/63 paired p. 6 | Source blanks, not visibly labelled redactions. |
| E08 | Training 79/test 35/maintenance-test 4; one mixed; 93 other; six blank | S1 pp. 4-6 paired with pp. 1-3 | 218-row classification tally; 118/218 = 54.1%, not airtime. |
| E09 | User counts and launch counts | S1 pp. 1-3, User/Launch Address columns | No proof of pilot role, route or authorization. |
| E10 | Summary dated limits Aug 19 07:13 to Oct 7 16:21 start/16:34 end | S1 p. 3 row 62 and p. 1 row 1 | CDT/UTC-5 header p. 1; undated final row excluded. |
| E11 | 562 distinct page IDs, four page types and 28 missing exits | S2 pp. 1-10 | Full-row extraction/recount; events not flights. |
| E12 | Page earliest/latest | S2 p. 1 ID 81056; p. 9 ID 94173 | Printed timezone not identified. |
| E13 | Long/overlapping page visits | S2 p. 2 ID 90926; p. 6 IDs 86172/86173 | No unique viewing-time or airtime inference. |
| E14 | 550 distinct Auth IDs and event breakdown | S3 pp. 1-26, 48-51 | Pp. 27-47 are Created at continuation, not more events. |
| E15 | Two October 8 Auth events | S3 p. 48 IDs 183074/183075 | 550 total minus 2 = 548 printed-date subset; timezone/receipt caveat. |
| E16 | Earliest Auth Created/Login timestamps | S3 p. 1 ID 117268 | Account activity, not proof of flight. |
| E17 | Successful login False precedes 2FA True | S3 p. 3 IDs 158253/158254 | Stage interpretation supported by sequence; field dictionary needed. |
| E18 | Password changes with redacted attribution | S3 p. 20 IDs 161809/161810 | Not proof of compromise or unauthorized change. |
| E19 | Twelve share rows and status/creator/window tally | S4 Sep 2026!A2:I12; Oct 2026!A2:I2 | Configured lifetime, not actual viewing or delivery. |
| E20 | Eight-/four-hour and revoked share examples | S4 Sep!A3:I3, A10:I10, A12:I12; Oct!A2:I2 | IDs 826, 541, 518, 920. No revocation timestamps. |
| E21 | No recipients/viewer/download fields | S4 Sep!A1:I12; Oct!A1:I2 | Schema absence in this workbook, not proof such records never existed. |
| E22 | Redacted joins obstruct reconciliation | S1 pp. 1-3; S2 pp. 1-10; S3 throughout; S4 F:G/I both sheets | Redaction lawfulness not decided. |
| E23 | Apparent missing classes and explanations | Compare R pp. 1-3 to S1-S4 and production list R pp. 3-4 | Review-universe absence; existence/search/withholding unresolved. |
| E24 | Prior airtime estimate not certified | P Flight metrics; S1 numeric duration columns pp. 1-3 | Retain as prior approximate claim only; not an adopted exact total. |

## Method and publication limits

R, S2 and S3 were text-extracted in full. All S1 pages were rendered, OCR processed with positional row pairing, and visually inspected; obvious OCR fragments in names/classifications were checked against the images. S2/S3 counts use distinct visible IDs, not timestamp fragments or continuation pages. S4 was read directly from both worksheets with source rows preserved; configured intervals were checked against creation/expiration. Original files were not modified. Supporting row extracts are working data, not replacement native productions.

This review does not certify the City's search, vendor retention, completeness of all correspondence, or the current portal status. It does not assume records absent from these uploads never existed. A record that formerly existed but was deleted is different from one never created, one outside City control, one withheld, one omitted from export and one still awaiting production. The requested follow-up should resolve those alternatives with existing records and custodian clarification.

For legal orientation only, the Arkansas Attorney General's [FOIA Handbook, 21st edition](https://arkansasag.gov/wp-content/uploads/2024-FOIA-Handbook-21st-Edition-ver4-SINGLES.pdf) describes electronic-format availability/conversion and the limit on requiring new records. This review's format finding rests on R's express wording and the portal's XLSX descriptions, not on a legal conclusion about whether a particular export was readily convertible.
