### Introduction

A work-in-progress FHIR R4 implementation guide for US pharmacy, published by Unscripted Rx and built live on stream,
starting with pharmacists and their licenses, degrees and board certifications.

This guide is early and changes often. It is not an HL7 publication.

### Scope today

The guide starts with the pharmacist:

- **Pharmacists**, as a Practitioner profile identified by NPI and NABP, with qualifications for their pharmacy degree,
  board certification and RPh license.
- **Pharmacist roles**, as a PractitionerRole profile with NUCC provider taxonomy specialties.
- **The organizations behind those qualifications**, such as state boards of pharmacy, the Board of Pharmacy Specialties
  and colleges of pharmacy.
- **Board of Pharmacy Specialties certifications**, as a code system.
- **The HL7 National Directory of Healthcare Providers & Services (NDH)**, which a Practitioner profile in this guide
  conforms to.

The [Artifacts](artifacts.html) page lists every profile, code system and example.

### Built live on stream

The guide is being built live, for education and reference, in the series
[Modeling US Pharmacy using HL7 FHIR](https://www.youtube.com/playlist?list=PLP28Q1m8c58E), streamed to YouTube,
LinkedIn, Facebook and Twitch. Recordings stay on YouTube.

| Episode | What it covers |
| --- | --- |
| [Episode 1](https://www.youtube.com/watch?v=FKP-nit5t0k) | Basic pharmacist representation |
| [Episode 2](https://www.youtube.com/watch?v=idUk0Y7YGVc) | Richer modeling for degrees, licenses, and board certifications |

### Who is behind it

Authored by [Brian K. Fung](https://www.briankfung.com/), PharmD, MPH, CNA, and published by
[Unscripted Rx](https://www.unscripted-rx.com/).

### Source and feedback

The FHIR Shorthand (FSH) source is on GitHub at
[unscripted-rx/us-pharmacy-fhir-ig](https://github.com/unscripted-rx/us-pharmacy-fhir-ig). Questions and suggestions
are welcome as [GitHub issues](https://github.com/unscripted-rx/us-pharmacy-fhir-ig/issues).

### License

Licensed under [Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/)
(CC-BY-4.0).

HL7® and FHIR® are the registered trademarks of Health Level Seven International and their use does not constitute
endorsement by HL7.
