# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "NY", last_name: "Admin", email: "admin@test.com", birthdate: "19900313", is_admin: true, username: "Admin", password: "password");
User.create(first_name: "David", last_name: "Patlut", email: "david@david.com", birthdate: "19920408", is_admin: false, username: "dpatlut", password: "password");
User.create(first_name: "Noly", last_name: "Ravoli", email: "noly@ravioli.com", birthdate: "19900309", is_admin: false, username: "nolyravioli", password: "password");

Comment.create(user_id: "2", building_id: 1001127, comment_type: "Pests", rating: 1, body: "Hide when guests come over intrigued by the shower, or stare at ceiling climb leg for stretch and use lap as chair. Hunt anything that moves flop over, leave dead animals as gifts for chase imaginary bugs, chase mice for stare at ceiling yet hopped up on goofballs.");
Comment.create(user_id: "3", building_id: 1001127, comment_type: "Pests", rating: 1, body: "Hide when guests come over intrigued by the shower, or stare at ceiling climb leg for stretch and use lap as chair. Hunt anything that moves flop over, leave dead animals as gifts for chase imaginary bugs, chase mice for stare at ceiling yet hopped up on goofballs.");
Comment.create(user_id: "2", building_id: 1001127, comment_type: "Utilities", rating: 1, body: "CrackBerry, in the main gorgeous that so-called “iPad killer” in my opinion iPhone rip-offs, while profit, consequently MacBook Air is just beautiful in the end battery drain so Android geek, I think Apple will only get better, in addition iTunes makes it easy, another point is that Flash sucks whereas Android is fragmented.");
Comment.create(user_id: "3", building_id: 1001127, comment_type: "Utilities", rating: 1, body: "CrackBerry, in the main gorgeous that so-called “iPad killer” in my opinion iPhone rip-offs, while profit, consequently MacBook Air is just beautiful in the end battery drain so Android geek, I think Apple will only get better, in addition iTunes makes it easy, another point is that Flash sucks whereas Android is fragmented.");
Comment.create(user_id: "3", building_id: 1001128, comment_type: "Utilities", rating: 1, body: "CrackBerry, in the main gorgeous that so-called “iPad killer” in my opinion iPhone rip-offs, while profit, consequently MacBook Air is just beautiful in the end battery drain so Android geek, I think Apple will only get better, in addition iTunes makes it easy, another point is that Flash sucks whereas Android is fragmented.");
Comment.create(user_id: "2", building_id: 1001128, comment_type: "Utilities", rating: 1, body: "CrackBerry, in the main gorgeous that so-called “iPad killer” in my opinion iPhone rip-offs, while profit, consequently MacBook Air is just beautiful in the end battery drain so Android geek, I think Apple will only get better, in addition iTunes makes it easy, another point is that Flash sucks whereas Android is fragmented.");




# Violation.create(code:"01", description:"ACCIDENT - CONSTRUCTION/PLUMBING", priority:"A");
# Violation.create(code:"03", description:"ADJACENT BUILDINGS - NOT PROTECTED", priority:"A");
# Violation.create(code:"04", description:"AFTER HOURS WORK - ILLEGAL", priority:"B");
# Violation.create(code:"05", description:"PERMIT - NONE (BUILDING/ PA/ DEMO ETC.)", priority:"B");
# Violation.create(code:"06", description:"CONSTRUCTION - CHANGE GRADE / CHANGE WATERCOURSE", priority:"B");
# Violation.create(code:"09", description:"DEBRIS - EXCESSIVE", priority:"B");
# Violation.create(code:"10", description: "DEBRIS/BUILDING -FALLING OR IN DANGER OF FALLING", priority:"A");
# Violation.create(code:"12", description: "DEMOLITION-UNSAFE/ILLEGAL/MECHANICAL DEMO", priority:"A");
# Violation.create(code:"13", description: "ELEVATOR IN (FDNY) READINESS-NONE", priority:"A");
# Violation.create(code:"14", description: "EXCAVATION - UNDERMINING ADJACENT BUILDING", priority:"A");
# Violation.create(code:"15", description: "FENCE - NONE/INADEQUATE/ILLEGAL", priority:"B");
# Violation.create(code:"16", description: "INADEQUATE SUPPORT/SHORING", priority:"A");
# Violation.create(code:"18", description: "MATERIAL STORAGE - UNSAFE", priority:"A");
# Violation.create(code:"20", description:"LANDMARK BUILDING - ILLEGAL WORK", priority:"A")
# Violation.create(code:"21", description:"SAFETY NET/GUARD RAIL-DAMAGED/INADEQUATE/NONE(OVER 6 STY/75 FT)", priority:"B");
# Violation.create(code:"23", description:"SIDEWALK SHED/SUPPORTED SCAFFOLD/ INADEQUATE/ DEFECTIVE/ NONE/NO PMT/NO CERT", priority: "B");
# Violation.create(code:"29", description:"BUILDING - VACANT, OPEN AND UNGUARDED", priority:"C");
# Violation.create(code:"30", description: "BUILDING SHAKING/VIBRATING/STRUCT STABILITY AFFECTED", priority:"A");
# Violation.create(code:"31", description: "CERTIFICATE OF OCCUPANCY - NONE/ILLEGAL/CONTRARY TO CO", priority:"C");
# Violation.create(code:"35", description: "CURB CUT/DRIVEWAY/CARPORT - ILLEGAL", priority:"D");
# Violation.create(code:"37", description: "EGRESS - LOCKED/BLOCKED/IMPROPER/NO SECONDARY MEANS", priority:"A");
# Violation.create(code:"45", description: "ILLEGAL CONVERSION", priority:"B");
# Violation.create(code:"49", description: "STOREFRONT OR BUSINESS SIGN/AWNING/MARQUEE/CANOPY – ILLEGAL", priority:"C");
# Violation.create(code:"50", description: "SIGN FALLING - DANGER/SIGN ERECTION OR DISPLAY IN PROGRESS – ILLEGAL", priority:"A");
# Violation.create(code:"52", description: "SPRINKLER SYSTEM - INADEQUATE", priority:"B");
# Violation.create(code:"53", description: "VENT/EXHAUST - ILLEGAL/IMPROPER", priority:"D");
# Violation.create(code:"54", description: "WALL/RETAINING WALL - BULGING/CRACKED", priority:"B");
# Violation.create(code:"55", description: "ZONING - NON-CONFORMING", priority:"D");
# Violation.create(code:"56", description: "BOILER - FUMES/SMOKE/CARBON MONOXIDE", priority:"A");
# Violation.create(code:"58", description: "BOILER - DEFECTIVE / INOPERATIVE / NO PERMIT", priority:"B");
# Violation.create(code:"59", description: "ELECTRICAL WIRING – DEFECTIVE / EXPOSED, IN PROGRESS", priority:"B");
# Violation.create(code:"62", description: "ELEVATOR-DANGER CONDITION/SHAFT OPEN/UNGUARDED", priority:"A");
# Violation.create(code:"63", description: "ELEVATOR - DEFECTIVE / INOPERATIVE", priority:"B");
# Violation.create(code:"65", description: "GAS HOOK-UP/PIPING - ILLEGAL OR DEFECTIVE", priority:"A");
# Violation.create(code:"66", description: "PLUMBING WORK - ILLEGAL/NO PERMIT(ALSO SPRINKLER/STANDPIPE)", priority:"B");
# Violation.create(code:"67", description: "CRANE - NO PERMIT/LICENSE/CERT/UNSAFE/ILLEGAL", priority: "A");
# Violation.create(code:"71", description: "SRO - ILLEGAL WORK/NO PERMIT/CHANGE IN OCCUP-USE", priority:"B");
# Violation.create(code:"73", description: "FAILURE TO MAINTAIN", priority:"C");
# Violation.create(code:"74", description: "ILLEGAL COMMERCIAL/MANUFACTURING USE IN RESIDENTIAL ZONE", priority:"C");
# Violation.create(code:"75", description: "ADULT ESTABLISHMENT", priority:"B");
# Violation.create(code:"76", description: "UNLICENSED/ILLEGAL/IMPROPER PLUMBING WORK IN PROGRESS", priority:"A");
# Violation.create(code:"77", description: "CONTRARY TO LL58/87 (HANDICAP ACCESS)", priority:"C");
# Violation.create(code:"78", description: "PRIVATELY OWNED PUBLIC SPACE/NON-COMPLIANCE", priority: "B");
# Violation.create(code"79", description: "LIGHTS FROM PARKING LOT SHINING ON BUILDING", priority: "C");
# Violation.create(code:"80", description: "ELEVATOR NOT INSPECTED/ILLEGAL/NO PERMIT", priority: "D");
# Violation.create(code:"81", description: "ELEVATOR - ACCIDENT", priority: "A");
# Violation.create(code:"82", description: "BOILER - ACCIDENT/EXPLOSION", priority: "A");
# Violation.create(code:"83", description: "CONSTRUCTION -CONTRARY/BEYOND APPROVED PLANS/PERMITS", priority:"B");
# Violation.create(code:"85", description: "FAILURE TO RETAIN WATER / IMPROPER DRAINAGE (LL103/89)", priority:"C");
# Violation.create(code:"86", description: "WORK CONTRARY TO STOP WORK ORDER", priority:"A");
# Violation.create(code:"88", description: "SAFETY NET/GUARD RAIL-DAM/INADEQ/NONE(6FL.75 FT OR LESS)", priority:"B");
# Violation.create(code:"89", description: "ACCIDENT-CRANES/DERRICKS/SUSPENSION", priority:"A");
# Violation.create(code:"90", description: "UNLICENSED/ILLEGAL ACTIVITY", priority: "C");
# Violation.create(code:"91", description: "SITE CONDITIONS ENDANGERING WORKERS", priority: "A");
# Violation.create(code:"92", description: "ILLEGAL CONVERSION OF MANUFACTURING/INDUSTRIAL SPACE", priority: "B");
# Violation.create(code:"93", description: "REQUEST FOR RETAINING WALL SAFETY INSPECTION", priority: "B");
# Violation.create(code:"94", description: "PLUMBING-DEFECTIVE/LEAKING/NOT MAINTAINED", priority: "C");
# Violation.create(code:"1A", description: "ILLEGAL CONVERSION COMMERCIAL BLDG/SPACE TO DWELLING UNITS", priority: "B");
# Violation.create(code:"1B", description: "ILLEGAL TREE REMOVAL/TOPO. CHANGE IN SNAD", priority: "B");
# Violation.create(code:"1D", description: "CON EDISON REFERRAL", priority: "B");
# Violation.create(code:"1E", description: "SUSPENDED (HANGING) SCAFFOLDS- NO PMT/LIC/DANGEROUS/ACCIDENT", priority: "A");
# Violation.create(code:"1G", description: "STALLED CONSTRUCTION SITE", priority: "B");
# Violation.create(code:"1K", description: "BOWSTRING TRUSS TRACKING COMPLAINT", priority: "D");
# Violation.create(code:"1Z", description: "ENFORCEMENT WORK ORDER (DOB)", priority: "D");
# Violation.create(code:"2A", description: "POSTED NOTICE OR ORDER REMOVED/TAMPERED WITH", priority: "B");
# Violation.create(code:"2B", description: "FAILURE TO COMPLY WITH VACATE ORDER", priority: "A");
# Violation.create(code:"2C", description: "SMOKING BAN – SMOKING ON CONSTRUCTION SITE", priority: "B");
# Violation.create(code:"2D", description: "SMOKING SIGNS – “NO SMOKING SIGNS” NOT OBSERVED ON CONSTRUCTION SITE", priority: "B");
# Violation.create(code:"2E", description: "DEMOLITION NOTIFICATION RECEIVED", priority: "A");
# Violation.create(code:"2F", description: "BUILDING UNDER STRUCTURAL MONITORING", priority: "D");
# Violation.create(code:"2G", description: "ADVERTISING SIGN/BILLBOARD/POSTERS/FLEXIBLE FABRIC – ILLEGAL", priority: "C");
# Violation.create(code:"2H", description: "SECOND AVENUE SUBWAY CONSTRUCTION", priority: "D");
# Violation.create(code:"2J", description: "SANDY: BUILDING DESTROYED", priority: "D");
# Violation.create(code:"2K", description: "STRUCTURALLY COMPROMISED BUILDING (LL33/08)", priority: "D");
# Violation.create(code:"2L", description: "FAÇADE (LL11/98)- UNSAFE NOTIFICATION", priority: "D");
# Violation.create(code:"2M", description: "MONOPOLE TRACKING COMPLAINT", priority: "D");
# Violation.create(code:"3A", description: "UNLICENSED/ILLEGAL/IMPROPER ELECTRICAL WORK IN PROGRESS", priority:"B");
# Violation.create(code:"4A", description: "ILLEGAL HOTEL ROOMS IN RESIDENTIAL BUILDINGS", priority: "B");
# Violation.create(code:"4B", description: "SEP - PROFESSIONAL CERTIFICATION COMPLIANCE AUDIT", priority: "B");
# Violation.create(code:"4C", description: "EXCAVATION TRACKING COMPLAINT", priority: "D");
# Violation.create(code:"4D", description: "INTERIOR DEMO TRACKING COMPLAINT", priority: "D");
# Violation.create(code:"4F", description: "SST TRACKING COMPLAINT", priority: "D");
# Violation.create(code:"4G", description: "ILLEGAL CONVERSION NO ACCESS FOLLOW-UP", priority: "B");
# Violation.create(code:"4J", description: "M.A.R.C.H. PROGRAM (INTERAGENCY)", priority: "D");
# Violation.create(code:"4K", description: "BEST - DM TRACKING COMPLAINT", priority: "D");
# Violation.create(code:"4L", description: "BEST - HIGH-RISE TRACKING COMPLAINT", priority: "D");
# Violation.create(code:"4M", description: "BEST - LOW-RISE TRACKING COMPLAINT", priority: "D");
# Violation.create(code:"4N", description: "RETAINING WALL TRACKING COMPLAINT", priority: "D");
# Violation.create(code:"4P", description: "LEGAL/PADLOCK TRACKING COMPLAINT", priority: "D");
# Violation.create(code:"4W", description: "WOODSIDE SETTLEMENT PROJECT", priority: "C");
# Violation.create(code:"5A", description: "REQUEST FOR JOINT FDNY/DOB INSPECTION", priority: "B");
# Violation.create(code:"5B", description: "NON-COMPLIANCE W/LIGHTWEIGHT MATERIALS", priority: "A");
# Violation.create(code:"5C", description: "STRUCTURAL STABILITY IMPACTED - NEW BUILDING UNDER CONSTRUCTION", priority: "A");
# Violation.create(code:"5E", description: "AMUSEMENT RIDE ACCIDENT/INCIDENT", priority: "A");
# Violation.create(code:"5F", description: "COMPLIANCE INSPECTION", priority: "B");
# Violation.create(code:"5G", description: "UNLICENSED/ILLEGAL/IMPROPER WORK IN PROGRESS", priority: "B");
# Violation.create(code:"6A", description: "VESTING INSPECTION", priority:"C");
