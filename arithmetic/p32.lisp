;;;; p32.lisp
;;;; Determine the greatest common divisor of two positive integer numbers

(in-package :99-questions)

(defun euclid-gcd (x y)
  (if (zerop y) x (euclid-gcd y (mod x y))))
