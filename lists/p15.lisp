;;;; p15.lisp
;;;; Replicate the elements of a list a given number of times

(in-package :99-questions)

(defun n-replicate (lst n)
  (mapcan (lambda (el)
            (loop repeat n
                  collect el))
          lst))
