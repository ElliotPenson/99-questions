;;;; p24.lisp
;;;; Lotto: Draw N different random numbers

(in-package :99-questions)

(defun lotto-select (n set-size)
  (rnd-select (range 1 set-size) n))
