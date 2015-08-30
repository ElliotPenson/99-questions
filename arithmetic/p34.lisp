;;;; p34.lisp
;;;; Calculate Euler's totient function phi(m)

(in-package :99-questions)

;;; Evaluates to the amount of relatively price numbers less than or equql to
;;; the given integer
(defun totient-phi (number)
  (loop for candidate from 1 to number
     count (coprimep number candidate)))
