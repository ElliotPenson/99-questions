;;;; p02.lisp
;;;; Find the second to last element of a list

(defun penultimate (lst)
  (second (reverse lst)))
