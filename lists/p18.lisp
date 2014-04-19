;;;; p18.lisp
;;;; Given two idices, i and k, the slice is the list containing the elements
;;;;    between the i'th and k'th element of the original list (both limits
;;;;    included). Start counting the elements with 1.

(in-package :99-questions)

(defun slice (lst start end)
  (loop for item in lst
        for i from 1
        if (and (>= i start)
                (<= i end))
        collect item))
