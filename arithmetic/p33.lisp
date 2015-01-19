;;;; p33.lisp
;;;; Determine whether two positive integer numbers are coprime

(in-package :99-questions)

(defun coprimep (x y)
  (= (gcd x y) 1))
