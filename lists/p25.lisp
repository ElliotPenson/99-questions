;;;; p25.lisp
;;;; Generate a random permutation of the elements of a list

(in-package :99-questions)

(defun rnd-permu (lst)
  (rnd-select lst (length lst)))
