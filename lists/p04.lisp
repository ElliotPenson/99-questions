;;;; p04.lisp
;;;; Find the number of elements of a list.

(defun len (lst)
  (if lst
    (1+ (len (cdr lst)))
    0))