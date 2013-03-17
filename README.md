Personal LaTeX tidbits
===============================================================================

This is a collection of LaTeX code that I have written for my own needs.

Description
-------------------------------------------------------------------------------

This collection consists of:

* `rgmpaper.sty`: a template for writing papers.
* `ajp-renal.bst`: a bibliography style compatible with AJP Renal.
* `plainrgm.bst`: a bibliography style, sorted by author surname.
* `plainrgmc.bst`: a bibliography style, sorted by citation order.
* `rgmbeamer.sty`: a template for writing beamer presentations.
* `beamerthemergm.sty`: a theme for beamer presentations.
* `beamercolorthemezenburn.sty`: a colour theme for beamer presentations.

The `plainrgm` bibliography styles are minor modifications to `plainnat.bst`
that:

* turn DOIs into clickable links to `http://dx.doi.org/`.
* only include the URL field if there is no DOI.

This collection also includes the following sub-directories:

* `demo`: a demonstration of using the `rgmbeamer` theme.
* `font`: a handwritten font for chalkboard-style slides.

Configuration
-------------------------------------------------------------------------------

Add the following lines to ~/.profile and ~/.bashrc (and define `LATEX_DIR`):

    export TEXINPUTS=".:${LATEX_DIR}:"
    export BSTINPUTS="${TEXINPUTS}"
    export CLSINPUTS="${TEXINPUTS}"
    export STYINPUTS="${TEXINPUTS}"

