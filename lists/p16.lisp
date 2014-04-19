;;;; p16.lisp
;;;; Drop every N'th element from a list

(in-package :99-questions)

(defun drop (lst n)
  (loop for item in lst
        for i from 1
        unless (zerop (mod i n))
        collect item))
