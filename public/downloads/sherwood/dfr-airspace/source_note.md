# Sherwood DFR GIS analysis - October 6, 2026

ARAP analysis of downloaded feature geometry, not viewer screenshots. Results describe mapped horizontal footprints, not permission to fly or an audit of actual missions.

## Main results

| Measure | Square miles | Share of city land |
|---|---:|---:|
| Sherwood total municipal polygon | 21.155 | - |
| Census mapped water inside municipal polygon | 0.410 | - |
| Sherwood land used as denominator | 20.744 | 100.0% |
| UASFM union | 15.707 | 75.7% |
| Actual mapped surface-airspace union | 13.524 | 65.2% |
| UASFM footprint outside surface-airspace union | 2.182 | 10.5% |
| City land inside proposed 3-statute-mile circle | 15.616 | 75.3% |

## Airport and ceiling results

| UASFM attribution / CEILING | Intersected land, sq mi | Share of city land |
|---|---:|---:|
| LRF / 0 ft AGL | 5.134 | 24.7% |
| LRF / 400 ft AGL | 8.390 | 40.4% |
| LIT / 400 ft AGL | 2.182 | 10.5% |
| ORK / no attributed intersecting cells | 0.000 | 0.0% |
| All UASFM cells, union | 15.707 | 75.7% |

85 cells have positive-area intersections with the city: 69 LRF and 16 LIT. Of these, 27 have CEILING 0; 58 have CEILING 400. Attribution comes from all five APTn_FAAID fields, not proximity to an airport. No LRF/LIT airport overlap occurs inside the city in this snapshot. Airport totals are nevertheless unioned and exclusive combinations calculated in the machine-readable results. ORK's absence from these layers does not remove the need to avoid airport traffic or check other restrictions.

Actual surface coverage is LRF 12.197 sq mi (58.8%) plus LIT 1.327 sq mi (6.4%); union 13.524 sq mi (65.2%). LRF Class D and Class E2 have the same footprint and are counted once; their activation is NOTAM-dependent. LIT's surface Class C is included; its 1,500/1,800/2,100-ft MSL shelves are excluded. Class E5 polygons with 700/1,200-ft AGL floors are excluded even though their LOWER_CODE is SFC. Surface selection requires LOWER_VAL = 0 AND LOWER_CODE = SFC. These are published airspace footprints, not a live determination of active class at every instant. Current legal descriptions, charts, NOTAMs and authorization terms govern operations.

## Site and planning circle

The April 14, 2026 BRINC site survey, page 3, identifies Police Headquarters at 2201 E Kiehl Ave and a roof station coordinate of 34.833337827083945, -92.208861322158. The signed August 19, 2026 installation summary, pages 2 and 7, identifies installation at that headquarters/address. This supports the label SPD / BRINC dock site. The pin uses the surveyed station location; final as-built coordinates have not been independently measured.

The BRINC Talking Paper describes roughly three miles of response radius, estimates 90-95% city coverage and later describes a BVLOS update. A geodesic 3-statute-mile circle centered on the survey coordinate intersects 15.616 sq mi, or 75.3% of the current municipal land polygon. This comparison measures land area, not population, calls for service, operational availability or actual flown routes. It does not reproduce the Talking Paper's 90-95% claim on that basis. It is planning coverage, not FAA-authorized coverage and not a three-mile limit in the produced FAA certificate. The whole circle is 28.273 sq mi; 54.0% of its total area intersects the surface-airspace union and 66.5% intersects UASFM cells. These whole-circle percentages include water and neighboring jurisdictions and have a different denominator from the city-land percentages.

The survey's dock coordinate falls essentially on the published UASFM edge (about 0.13 m outside the mathematical polygon) and about 645 m outside the nearest mapped surface-airspace footprint. An address geocoder shifts the point about 29 m east and places it in a 400-ft LRF grid. The survey itself describes the site as Class D. That discrepancy should be reconciled against current FAA charts, NOTAMs and the final dock coordinate before configuring operational geofences. The regional airspace result should not be converted into a precise launch-point authorization decision.

## What the produced FAA waiver actually provides

Sherwood's Certificate of Waiver and Authorization 91.113-2026-00585, signed May 14, 2026, lists an effective term May 13, 2026-May 31, 2030, subject to cancellation. Its six pages were visually reviewed. This is a Part 91 public-aircraft authority; a Part 107 pilot credential does not by itself convert a mission into a Part 107 operation.

Page 2 expressly makes the document an airspace authorization under its special provisions, excluding prohibited/restricted airspace. Page 3, provisions 10-12, permits conditional VLOS/BVLOS: controlled-airspace BVLOS must remain at or below 200 ft AGL or below the UASFM altitude, whichever is lower. In Class G, it permits at/below 200 ft AGL or an obstacle-related alternative within 100 ft of an obstruction, capped at 400 ft AGL. The obstacle allowance is not a general permission to fly at 300 ft everywhere. Separate CAPS/CADZ authority is required above grid heights, in controlled airspace where UASFMs are inapplicable, and for other listed cases. A 400-ft grid therefore does not raise routine controlled-airspace BVLOS to 400 ft; a 0-ft grid does not yield positive-altitude access under the blanket provisions.

Page 5, provisions 27-30, addresses operation below grid values without two-way ATC radio, programmed lost-link return-to-home, and preflight review by the remote PIC. The checklist provision has a specific critical/urgent emergency-management qualification; it should not be presented as an absolute requirement without that qualification. Page 6, provisions 35-36, requires ADS-B detection through the specified receiver/provider arrangements during BVLOS. The certificate also retains pilot qualification, air-traffic awareness, deconfliction, weather, aircraft, reporting and other conditions.

The Talking Paper describes optional launch rules tied to CAD calls, Flock hits and officer-duress signals. Those are descriptions of capabilities/plans; they do not prove that unattended launch triggers are configured, active or FAA-approved. An implementation should validate the remote PIC's role, mission authority, current grids, airspace/NOTAM/TFR restrictions, outbound/return/contingency routes, altitude limits, C2 and detection readiness against the actual certificate and incorporated application. No supplied file has been identified as the complete incorporated FAA application, and the produced certificate alone does not establish compliance or its subsequent amendment/cancellation status.

For ordinary Part 107 operations, LAANC may provide qualifying airspace authorization at participating facilities; it is not a BVLOS approval. The queried LRF/LIT grid attributes flag LAANC participation, but that is not evidence that Sherwood's Part 91 flights use LAANC. FAA directs operators using a Part 107 waiver in controlled airspace to FAADroneZone. Sherwood's produced Part 91 certificate specifically points to CAPS/CADZ for its additional-authority cases. Direct tower communication is not, by itself, a substitute for the written additional authorization required by that certificate. Do not assume the Talking Paper's statement about overriding grid values by communicating with a tower supersedes provision 12. Emergency departures from the approved envelope require the applicable SGI process described in provision 32.

## Sources and reproducible method

1. [City of Sherwood authoritative Master Map, item 2849b15e116b40f2bf0c48f4ebd12306](https://www.arcgis.com/home/item.html?id=2849b15e116b40f2bf0c48f4ebd12306). Its operational City of Sherwood Boundary is [City_Boundary / FeatureServer / 0](https://services9.arcgis.com/TYC03dQ8ZCOCi5CP/arcgis/rest/services/City_Boundary/FeatureServer/0). One feature downloaded, outSR 4326. Service metadata reports February 25, 2026, 21:51:57 UTC data edit. The March 3 update date specified in the request is not the live service's data-edit date; catalog and geometry-edit dates should not be conflated.
2. [FAA UAS Facility Map Data / 0](https://services6.arcgis.com/ssFJjBXIUyZDrSYZ/arcgis/rest/services/FAA_UAS_FacilityMap_Data/FeatureServer/0), FAA service item 4254d2f81e5241cc8ba5883b63ae397c. Live layer edit: October 6, 2026, 01:56:21 UTC (October 5 in Chicago). 516 envelope-query features downloaded by object-ID batches; all IDs accounted for; 85 intersect the municipal polygon. Fields CEILING and APT1-5_FAAID retained.
3. [FAA Class Airspace / 0](https://services6.arcgis.com/ssFJjBXIUyZDrSYZ/arcgis/rest/services/Class_Airspace/FeatureServer/0). Nine envelope-query features downloaded by object ID. Data edit September 28, 2026, 13:50:57 UTC; last/schema edit 18:53:33 UTC. Includes LRF D and E2 and LIT surface C and elevated shelves.
4. [Census TIGER/Line 2025 Pulaski County area-water geometry](https://www2.census.gov/geo/tiger/TIGER2025/AREAWATER/tl_2025_05119_areawater.zip). Union clipped to city, subtracted before land-area statistics. This is an estimate of land from mapped water, not a cadastral certification.
5. CITY-2026-150 local production: BRINC Talking Paper.docx; Sherwood PD-BRINC Site Survey-14 Apr 2026-Redacted.pdf (pp. 3-4); BRINC DFR Installation Summary-19 Aug 2026 (Signed)-Redacted.pdf (pp. 2, 7-9); Sherwood PD-FAA Part 91 Certificate of Waiver-14 May 2026-Redacted.pdf (all six pages). Public source extracts accompany the website package.
6. [FAA UASFM FAQ](https://www.faa.gov/uas/commercial_operators/uas_facility_maps/faq): grids inform authorization processing and do not grant flight approval. [FAA Flying Near Airports](https://www.faa.gov/uas/getting_started/where_can_i_fly/airspace_restrictions/flying_near_airports): LAANC/FAADroneZone pathways. [FAA Part 91 waivers](https://www.faa.gov/uas/advanced_operations/part_91_waivers): scope of that operating authority. [FAA Part 107 waivers](https://www.faa.gov/uas/commercial_operators/part_107_waivers): separate operational waivers.

The supplied experience [58bae0a8445d49c39f44a1a4654eb961](https://experience.arcgis.com/experience/58bae0a8445d49c39f44a1a4654eb961) identifies itself as City of Sherwood-Master Map and embeds the city's map; it is not the FAA UASFM viewer. FAA geometries were independently retrieved from its official services.

Method: convert downloaded WGS84 geometries to EPSG:5070, an equal-area CRS in meters; repair invalid geometries if present; union before intersecting with land; convert square meters to square statute miles (1609.344 squared). Airport attribution checks every APTn_FAAID field. Exclusive airport combinations partition land. Ceiling categories assign any overlap to the lowest CEILING first; no positive-area cross-airport overlap occurs here. LRF D/E2 are counted once. Circle is WGS84 geodesic, 3 x 1609.344 m, sampled every degree of azimuth. Retrieved October 6, 2026. Round only for presentation; machine-readable results preserve precision. Map pin accuracy and water vintage limit interpretation; the analysis is not a flight-navigation or current authorization tool.
