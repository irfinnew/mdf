# About

_mdf_ allows you to quickly and easily prepare beautiful PDF documents of low to medium complexity.

Starting to use _mdf_ is as simple as invoking `mdf foo.md` from the command line.
This will spawn your favourite editor and a PDF viewwer.
Whenever you save source document in the editor, _mdf_ updates the PDF.
For maximum effect, use a PDF viewer that watches for updates.

_mdf_ uses [markdown](https://en.wikipedia.org/wiki/Markdown), a user-friendly plain-text formatting language.
The markdown is compiled to HTML, styled by CSS, and then rendered to a PDF.
For extra flexibility, it's also possible to use custom HTML straight in the source document, and to use your own CSS for custom styling.

As a quick example, this piece of markdown produces a heading, followed by a paragraph of text, followed by a bulleted list:

```
# Header

This is a paragraph of text.
It consists of two sentences.

 - one
 - two
 - three
```

For a more comprehensive overview of what markdown can do, see [example.md](example.md).



# Installation

_mdf_ requires the following other pieces of software to run:

 - Python 3
 - [python-markdown](https://github.com/Python-Markdown/markdown)
 - [WeasyPrint](https://github.com/Kozea/WeasyPrint)

Note that older versions of WeasyPrint (< v53.0?) have issues with ugly kerning. v55.0 is fine.
For distributions that ship with an older WeasyPrint, such as Debian 11, you may want to use [virtualenv](https://docs.python.org/3/library/venv.html) to install a more recent version.

_mdf_ itself is a single-file Python program, you only need to put it somewhere it can be found from your `$PATH`.
Perhaps:

```
git clone git@github.com:mmoreaux/mdf.git ~/mdf
ln -s ~/mdf/mdf ~/bin/ || sudo ln -s ~/mdf/mdf /usr/local/bin/
```

The only other file _mdf_ needs is `style.css`, which should live right next to the executable.



# Configuration

## Editor

_mdf_ first checks the `$VISUAL` environment variable, then `$EDITOR`, for the editor to use.
If neither is set, it falls back to using the `editor` command.

Set `$EDITOR` in your environment setup to specify your preferred editor.


## PDF viewer

_mdf_ uses `xdg-open` to view the PDF.
This uses the default PDF viewer for the current desktop environment.


## Custom styling

Any CSS in `~/.mdf/style.css` will be applied, and it overrides the styling provided by _mdf_ itself.

For example, if you don't like the blue headings, put this in `~/.mdf/style.css`:
```
h1, h2, h3, h4 { color: black; }
```

By default, _mdf_ uses `sans-serif` as the font for everything, and it will differ from one system to another what actual font that resolves to.

It's recommended to choose a specific font, and set that in `~/.mdf/style.css`.
For example, this will use [Gentium](https://fonts.google.com/specimen/Gentium+Basic) for the headings, [IosevkaTerm](https://typeof.net/Iosevka/) for verbatim/code, and [Ubuntu](https://fonts.google.com/specimen/Ubuntu) for everything else:

```
body { font: 11.5pt Ubuntu; } 
h1, h2, h3, h4 { font-family: Gentium Basic, Gentium; }
pre, code { font: 10pt IosevkaTerm; }
```



# Command-line usage

Use `mdf --help` to get a list of arguments and their meaning. Quick reference:

Compile `foo.md` if it is newer than `foo.pdf`, and view it:
```
mdf -cv foo.md
```

Force compile `foo.md`, and do not use `~/.mdf/style.css`:
```
mdf -CU foo.md
```

Force compile `foo.md`, view `foo.pdf`, watch `foo.md` and recompile if it is updated:
```
mdf -Cvw foo.md
```

Compile `foo.md` if needed, view `foo.pdf`, edit `foo.md`, and watch/recompile it:
```
mdf foo.md
```
