(TeX-add-style-hook
 "simplex-15"
 (lambda ()
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
   (LaTeX-add-labels
    "cha:simplex-method"
    "eq:s-1"
    "eq:s-2"
    "sec:adjacent-vertices"
    "def:s-1"
    "thr:s-3"
    "item:s-4"
    "item:s-3"
    "s:3"
    "sec:non-degenerate-case"
    "fig:7"
    "def:s-2"
    "eq:s-5"
    "thr:s-4"
    "sec:moving-an-improving"
    "eq:s-6"
    "eq:s-8"
    "thr:s-5"
    "sec:term-degen-case"
    "thr:3"
    "eq:s15-1"
    "eq:s-15-2"
    "sec:finding-an-initial"
    "eq:s-3"
    "eq:s-151"
    "sec:remov-degen-pert"
    "eq:pert-2"
    "eq:per-1"
    "lem:per-2"
    "lem:pert-3"
    "eq:pert-3"
    "eq:pert-5"
    "eq:pert-4"
    "eq:p2"
    "alg:pert-1"
    "thr:6"
    "i:item:1"
    "xitem:10"
    "item:pert-3")))

