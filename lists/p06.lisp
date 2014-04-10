;;;; p06.lisp
;;;; Find out whether a list is a palindrome

(in-package :99-questions)

(defun palindromep (lst)
  (equal lst (reverse lst)))
