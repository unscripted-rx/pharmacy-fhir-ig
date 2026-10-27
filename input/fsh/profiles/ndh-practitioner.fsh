Profile: UrxNdhPractitioner
Parent: NdhPractitioner
Description: "A Practitioner that conforms to the NDH Practitioner profile, with no additional constraints."

Instance: NdhPractitionerExample
InstanceOf: UrxNdhPractitioner
Description: "An example of a practitioner that conforms to the NDH Practitioner profile."
* meta.lastUpdated = "2026-10-26T12:00:00Z"
* active = true
* identifier[NPI]
  * system = $npi
  * value = "1234567893" // example NPI, not a real provider
* name
  * given[+] = "Jane"
  * family = "Doe"
