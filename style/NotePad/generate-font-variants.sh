#! /bin/sh

FONT="ArchitectsDaughter"
BOLD=40
SKEW=0.5

fontforge -c "f = open('$FONT-Regular.ttf'); f.selection.all(); f.fontname = f.fontname.replace('Regular', 'Bold'); f.fullname = f.fullname.replace('Regular', 'Bold'); f.weight = 'Bold'; f.changeWeight($BOLD).generate('$FONT-Bold.ttf')"
fontforge -c "f = open('$FONT-Regular.ttf'); f.selection.all(); f.fontname = f.fontname.replace('Regular', 'Italic'); f.fullname = f.fullname.replace('Regular', 'Italic'); f.transform(psMat.skew($SKEW)).transform(psMat.scale(1, 0.9)).generate('$FONT-Italic.ttf')"
fontforge -c "f = open('$FONT-Regular.ttf'); f.selection.all(); f.fontname = f.fontname.replace('Regular', 'BoldItalic'); f.fullname = f.fullname.replace('Regular', 'BoldItalic'); f.weight = 'Bold'; f.transform(psMat.skew($SKEW)).transform(psMat.scale(1, 0.9)).changeWeight($BOLD).generate('$FONT-BoldItalic.ttf')"
