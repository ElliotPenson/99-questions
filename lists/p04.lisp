;;;; p04.lisp
;;;; Find the number of elements in a list.

(defun len (lst)
  (if lst
    (1+ (len (rest lst)))
    0))
