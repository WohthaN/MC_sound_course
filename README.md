# MC Sound Course

Course to introduce beginners to sound engineering

## Prerequisites

You need **pandoc** and a **TeX Live** installation with XeLaTeX.


```bash
sudo apt install pandoc texlive-latex-recommended texlive-latex-extra \
                 texlive-fonts-recommended fonts-dejavu
```

## Compiling the slides

```bash
bash slides2pdf.sh
```

This produces `slides.pdf` in the same directory. You can also pass explicit paths:

```bash
bash slides2pdf.sh slides.md output.pdf
```

---

## Troubleshooting

### `xdvipdfmx:fatal: Cannot proceed without the font`

**Symptom:** The build fails with a message like:

```
xdvipdfmx:fatal: Cannot proceed without the font: /usr/share/fonts/woff2/dejavu/DejaVuSans.woff2
Error producing PDF.
```

**Cause:** Some distros (e.g. Ubuntu) install DejaVu fonts in both TTF and WOFF/WOFF2
(web font) formats. fontconfig resolves `DejaVu Sans` to the WOFF or WOFF2 file,
which `xdvipdfmx` (used by XeLaTeX) cannot embed.

**Fix:** Create a user-level fontconfig rule to exclude the web-font directories:

```bash
mkdir -p ~/.config/fontconfig
```

Create `~/.config/fontconfig/fonts.conf` with this content:

```xml
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
  <!-- Exclude WOFF/WOFF2 web fonts so xelatex/xdvipdfmx uses TTF versions instead -->
  <selectfont>
    <rejectfont>
      <glob>/usr/share/fonts/woff2/*</glob>
    </rejectfont>
  </selectfont>
  <selectfont>
    <rejectfont>
      <glob>/usr/share/fonts/woff/*</glob>
    </rejectfont>
  </selectfont>
</fontconfig>
```

Then rebuild the font cache:

```bash
fc-cache -f
```

Run `bash slides2pdf.sh` again — it should now find the TTF versions and succeed.

### `Unicode character not set up for use with LaTeX`

**Symptom:**

```
! LaTeX Error: Unicode character ┌ (U+250C) not set up for use with LaTeX.
```

**Cause:** You are using `pdflatex` instead of `xelatex`. The slides contain
box-drawing characters in code blocks that pdflatex cannot handle.

**Fix:** Always use the provided `slides2pdf.sh` script, which passes
`--pdf-engine=xelatex` to pandoc. Do not invoke pandoc directly without that flag.