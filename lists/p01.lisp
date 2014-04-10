;;;; p01.lisp
;;;; Find the last element of a list

(in-package :99-questions)

(defun final (lst)
  (first (reverse lst)))
