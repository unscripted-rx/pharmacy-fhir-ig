Profile: UrxPractitionerRole
Parent: PractitionerRole
Description: "Example of a pharmacist practitioner role"
* code 0..* MS
* specialty 0..* MS

Instance: PractitionerRoleExample
InstanceOf: UrxPractitionerRole
Description: "An example of a pharmacist practitioner role."
* specialty[+] = $nucc#183500000X // pharmacist
* specialty[+] = $nucc#1835C0205X // critical care pharmacist
* practitioner = Reference(PractitionerExample)

Profile: UrxPractitioner
Parent: Practitioner
Description: "Example of a pharmacist practitioner"
* identifier MS // unsure if there is an identifier that can universally enumerate all pharmacists
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains NPI 0..1 and NABP 0..1
* identifier[NPI].system 1..1
* identifier[NPI].system = $npi
* identifier[NPI].value 1..1
* identifier[NABP].system 1..1
* identifier[NABP].system = $nabp
* identifier[NABP].value 1..1
* name 1..* MS
* qualification 1..* MS
  * identifier MS
    * system MS // issuing body
    * value MS // value of the license or board certification
  * code MS // e.g. PharmD, board certification, RPh license
  * period MS // can be used to represent the duration of a RPh license or board certification
  * issuer MS // for RPh, identifies the state(s) in which the pharmacist is licensed

Instance: PractitionerExample
InstanceOf: UrxPractitioner
Description: "An example of a pharmacist practitioner."
* name
  * given[+] = "James"
  * family = "Pond"
* qualification[+]
  * code = $v2-0360#PharmD
* qualification[+]
  * code = BoardCertificationCS#bcccp
* qualification[+]
  * identifier
    * system = "https://floridaspharmacy.gov/"
    * value = "RPH-123456" // example license number, not a real license
  * code = $facet#RPH
  * period
    * start = "2025-09-30"
    * end = "2027-09-30"
  * issuer = Reference(FloridaBoardOfPharmacy)
