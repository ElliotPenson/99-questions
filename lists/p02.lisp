;;;; p02.lisp
;;;; Find the second to last element of a list

(in-package :99-questions)

(defun penultimate (lst)
  (second (reverse lst)))
