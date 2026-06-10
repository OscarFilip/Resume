# Oscar Isberg Resume

This repository contains the latest version of my English resume, written in Typst and exported as PDF.

## Current Resume

- [Open the latest English resume PDF](english/resume-oscar-isberg.pdf)
- [View the Typst source](english/resume.typ)

## Repository Structure

- [english/](english/) contains the current English resume source and generated PDF.
- [danish/](danish/) contains the Danish resume source.
- [help/README.md](help/README.md) contains Typst setup, compilation, and editing instructions.

## Versioning

- Keep [english/resume.typ](english/resume.typ) and [english/resume-oscar-isberg.pdf](english/resume-oscar-isberg.pdf) as the latest English version.
- Keep [danish/resume.typ](danish/resume.typ) as the latest Danish source.
- Use focused Git commits for content changes instead of creating files named `final`, `v2`, or similar.
- Create Git tags for resume versions you send out or publish, using date-based names such as `resume-en-2026-05` or `resume-spotify-2026-05`.
- If you tailor the resume for a specific company, store that as a separate variant under `english/variants/<company>/` rather than changing the base resume history.

## Update Workflow

1. Edit [english/resume.typ](english/resume.typ).
2. Rebuild [english/resume-oscar-isberg.pdf](english/resume-oscar-isberg.pdf).
3. Commit with a focused message describing the content change.
4. Add a Git tag if the version was sent to a company or otherwise published.