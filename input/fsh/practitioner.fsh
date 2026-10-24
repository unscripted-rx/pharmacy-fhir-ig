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
* name 1..* MS
* qualification 1..* MS

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
  * code = $facet#RPH