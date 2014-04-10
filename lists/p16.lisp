;;;; p16.lisp
;;;; Drop every N'th element from a list

(in-package :99-questions)

(defun drop (lst n)
  (loop for item in lst
        for i from 1
        unless (= (mod i n) 0)
        collect item))
