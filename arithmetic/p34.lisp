;;;; p34.lisp
;;;; Calculate Euler's totient function phi(m)

(in-package :99-questions)

(defun totient-phi (number)
  "Evaluates to the amount of relatively prime numbers less than or equal to the
   given integer"
  (loop for candidate from 1 to number
     count (coprimep number candidate)))
