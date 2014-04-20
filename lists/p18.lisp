;;;; p18.lisp
;;;; Exract a slice from a list

(in-package :99-questions)

(defun slice (lst start end)
  (loop for item in lst
        for i from 1
        if (and (>= i start)
                (<= i end))
        collect item))
