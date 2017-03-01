(TeX-add-style-hook
 "algorithms"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (LaTeX-add-labels
    "cha:runn-time-analys"
    "ex-a-1"
    "ex-a-3"
    "def:2"
    "def:1"
    "alg:1"
    "exe:det"
    "alg:ex2"
    "item:ex:7"
    "sec:analys-gauss-elim"
    "alg:3"
    "fig:9"
    "co:11"
    "co:10"
    "thr:9"
    "sec:exercises"
    "item:3"
    "sec:fast-matr-mult"
    "eq:str:1"
    "eq:str:3"
    "eq:stra:4"
    "eq:str:5"
    "fig:str:1"
    "thr:10"
    "item:str:4")))

