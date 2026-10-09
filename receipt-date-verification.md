# Receipt date verification

Receipt dates remain separate from reporting periods, memo dates, policy dates, export dates, filesystem times and download filenames. The index leaves exact `received_date` fields null because no original incoming production notification or full portal activity history was supplied.

For the July production, the saved portal export (LR-001 pp.4,8) was captured July 13, 2026 at 2:53 PM, shows Completed, and lists the first five of ten attachments. That supports availability of the visible records by capture. LR-019 contains ten PDFs, and all extracted PDFs match its member hashes. The ZIP filename suggests a July 13 download; it cannot independently establish the first delivery time of the entire bundle.

For the August production, the saved outgoing ARAP email (LR-022 p.1), displayed August 20 at 2:20 PM, thanks LRPD for reports already provided and describes the two 2025 reports. This corroborates possession and review by then, independently of report dates. It is a saved print rather than a raw message with delivery headers, and does not authenticate attachment hashes. LR-028 ties the three local PDFs to the saved second production, while the report for 2026 is byte-identical to one in the July production.

Use public wording: “The saved July 13 portal capture shows records available under request PDFOI-2026-2594; the exact delivery time has not been independently verified.” For the 2025 reports: “ARAP’s saved August 20 correspondence documents that the reports had been received and reviewed by that date; the exact delivery time is unverified.” Do not label all records “received July 13” or “received August 20” as established fact.

The August 18 and October 7 JustFOIA messages acknowledge request submission, not production. The October 9 export of the August confirmation is another capture of the same message, not a new request. Times printed in Gmail have no explicit timezone; retain them as displayed rather than converting them.