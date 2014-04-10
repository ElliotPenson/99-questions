;;;; p04.lisp
;;;; Find the number of elements in a list.

(in-package :99-questions)

(defun len (lst)
  (if lst
    (1+ (len (rest lst)))
    0))
