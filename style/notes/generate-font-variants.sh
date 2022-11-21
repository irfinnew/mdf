#! /bin/sh

FONT="ArchitectsDaughter"
BOLD=40
SKEW=0.5

fontforge -c "f = open('$FONT-Regular.ttf'); f.selection.all(); f.changeWeight($BOLD).generate('$FONT-Bold.ttf')"
fontforge -c "f = open('$FONT-Regular.ttf'); f.selection.all(); f.transform(psMat.skew($SKEW)).transform(psMat.scale(1, 0.9)).generate('$FONT-Italic.ttf')"
fontforge -c "f = open('$FONT-Regular.ttf'); f.selection.all(); f.transform(psMat.skew($SKEW)).transform(psMat.scale(1, 0.9)).changeWeight($BOLD).generate('$FONT-BoldItalic.ttf')"

#FONT="MarckScript"
#fontforge -c "f = open('$FONT-Regular.ttf'); f.selection.all(); f.changeWeight($BOLD).generate('$FONT-Bold.ttf')"
