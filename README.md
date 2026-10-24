# Pharmacy FHIR Implementation Guide

A work-in-progress HL7® FHIR® R4 Implementation Guide for pharmacy: pharmacist practitioners, their
roles, and their board certifications. Published by [Unscripted Rx](https://www.unscripted-rx.com)
and authored by [Brian K. Fung](https://www.briankfung.com).

**Continuous build:** https://build.fhir.org/ig/unscripted-rx/pharmacy-fhir-ig/

This guide is early and changes often. It is not an HL7 publication.

## Building locally

Needs Node.js and Java.

```sh
npm install            # installs the SUSHI version this guide is built with
./_build.sh update     # first time only: downloads the IG Publisher
npm run sushi          # compiles the FSH in input/fsh into FHIR resources
npm run build          # compiles, then runs the IG Publisher on SUSHI's output
```

The rendered guide is written to `output/index.html`.

## License

Licensed under [Creative Commons Attribution 4.0 International](LICENSE) (CC-BY-4.0).

HL7® and FHIR® are the registered trademarks of Health Level Seven International and their use does
not constitute endorsement by HL7.
