# How to use Typst

## Option 1: Use the Typst web app

1. Go to https://typst.app/
2. Create a new project.
3. Upload or paste `*.typ`.
4. Edit the content in the left editor.
5. Export the PDF from the preview.

This is the fastest way to get started.

## Option 2: Use Typst locally with VS Code

### Install Typst

macOS with Homebrew:

```bash
brew install typst
```

Windows with Winget:

```powershell
winget install Typst.Typst
```

Linux / universal install:

See the latest install instructions at https://github.com/typst/typst/releases

### VS Code setup

Install the VS Code extension:

- `Tinymist Typst`

### Compile to PDF

From the folder containing `*.typ`:

```bash
typst compile *.typ *.pdf
```

To automatically recompile while editing:

```bash
typst watch *.typ *.pdf
```

## How to edit

Most edits are simple text edits.

### Change the header

At the top of `*.typ`, edit:

```typst
#text(size: 24pt, weight: "bold", fill: accent)[Name Lastname]
#text(size: 12.2pt, fill: muted)[Work title]
```

### Add a new job

Copy one `#entry(...)` block and edit the company, role, dates, location, and bullet list.

### Add a skill

Find the `#skill-list(( ... ))` block and add another item, for example:

```typst
[Azure Functions],
```

### Change colors

Near the top of the file, edit:

```typst
#let accent = rgb("#1f5d8f")
#let sidebar-bg = rgb("#edf4fa")
```