;;;; p19.lisp
;;;; Rotate a list N places to the left

(in-package :99-problems)

(defun rotate (lst places)
  (let ((divided (split lst (mod places (length lst)))))
    (append (second divided)
            (first divided))))
