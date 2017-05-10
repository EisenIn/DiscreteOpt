(TeX-add-style-hook
 "ellipsoid"
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
    "el:cha:ellipsoid-method"
    "el:ex:6"
    "el:eq:13"
    "el:ex:8"
    "el:lem:12"
    "el:fig:half-ball"
    "el:eq:16"
    "el:eq:15"
    "el:eq:17"
    "el:eq:18"
    "el:eq:19"
    "el:thr:19"
    "el:thr:22"
    "el:eq:20"
    "el:thr:20"
    "el:sec:method"
    "el:alg:3"
    "el:item:2"
    "el:item:1"
    "el:item:3"
    "el:item:4"
    "el:thr:21"
    "el:eq:23"
    "sec:deciding-feasibility"
    "item:4"
    "item:7"
    "item:8"
    "el:ex:11"
    "el:thr:24"
    "el:eq:42"
    "thr:11"
    "thr:12"
    "exercise:3"
    "exercise:1"
    "exercise:2"
    "el:sec:separation-problem"
    "el:ex:10"
    "el:eq:26"
    "el:eq:25"
    "el:ex:7"
    "el:sec:ellips-meth-optim"
    "el:eq:43"
    "el:ex:12"
    "el:sec:numerical-issues")))

