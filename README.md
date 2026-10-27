# US Pharmacy FHIR Implementation Guide

A work-in-progress FHIR R4 implementation guide for US pharmacy, published by
[Unscripted Rx](https://www.unscripted-rx.com/) and built live on stream, starting with pharmacists and their
licenses, degrees and board certifications. Authored by [Brian K. Fung](https://www.briankfung.com/).

- **Read the guide:** [build.fhir.org/ig/unscripted-rx/us-pharmacy-fhir-ig](https://build.fhir.org/ig/unscripted-rx/us-pharmacy-fhir-ig/),
  the latest CI build.
- **Watch it being built:** [Modeling US Pharmacy using HL7 FHIR](https://www.youtube.com/playlist?list=PLP28Q1m8c58E),
  streamed to YouTube, LinkedIn, Facebook and Twitch.

This guide is early and changes often. It is not an HL7 publication.

## Livestreams

The guide is being built live, for education and reference. Every episode is in the
[playlist](https://www.youtube.com/playlist?list=PLP28Q1m8c58E); the guide's home page lists them too.

| Episode | What it covers |
| --- | --- |
| [Episode 1](https://www.youtube.com/watch?v=FKP-nit5t0k) | Basic pharmacist representation |
| [Episode 2](https://www.youtube.com/watch?v=idUk0Y7YGVc) | Richer modeling for degrees, licenses, and board certifications |

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
