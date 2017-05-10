(TeX-add-style-hook
 "lecture"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("svmono" "11pt" "envcountchap" "pdf")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("graphicx" "pdftex") ("fontenc" "T1") ("inputenc" "utf8") ("babel" "american")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "latex2e"
    "algorithms"
    "convex"
    "introduction"
    "simplex-15"
    "analysis"
    "polyhedra"
    "duality"
    "integer-programming"
    "flows"
    "ellipsoid"
    "primal-dual"
    "svmono"
    "svmono11"
    "graphicx"
    "tikz"
    "tkz-berge"
    "listings"
    "fontenc"
    "inputenc"
    "babel"
    "colortbl"
    "caption"
    "subcaption"
    "amssymb"
    "amsmath"
    "mathrsfs"
    "psfrag"
    "hyperref"
    "enumerate"
    "utf8math"
    "xspace"
    "tabularx")
   (TeX-add-symbols
    '("fancybox" ["argument"] 1)
    '("wb" 1)
    '("smat" 1)
    '("mat" 1)
    '("smallmat" 1)
    '("wt" 1)
    "plw"
    "psv"
    "ip"
    "SV"
    "eps"
    "beps"
    "bigO"
    "cut"
    "LLL"
    "setR"
    "setZ"
    "setQ"
    "setC"
    "setN"
    "opt"
    "aug"
    "psep"
    "sep"
    "fopt"
    "hpp"
    "nodes"
    "vol"
    "diag"
    "arcs"
    "edges"
    "paths"
    "cycles"
    "K"
    "A"
    "B"
    "T"
    "eE"
    "eS"
    "eP"
    "eM"
    "transp"
    "pc"
    "ob"
    "odds"
    "up"
    "ef"
    "eh"
    "ev"
    "ec"
    "eu"
    "lex"
    "R"
    "Z"
    "N"
    "linhull"
    "affhull"
    "charcone"
    "cone"
    "rank")
   (LaTeX-add-labels
    "p:eq:1"
    "fig:8"
    "thr:8"
    "p:ineq"
    "p:sol"
    "p:impli"
    "p:Farkas"
    "thr:7"
    "eq:1")
   (LaTeX-add-environments
    '("dproblem" 2)
    "assumption")
   (LaTeX-add-bibliographies
    "mybib"
    "papers"
    "books"
    "my_publications")
   (LaTeX-add-color-definecolors
    "Gray")
   (LaTeX-add-array-newcolumntypes
    "A"
    "B"
    "R"
    "G"
    "E"
    "C")))

