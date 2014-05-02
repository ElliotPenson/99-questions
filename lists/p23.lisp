;;;; p23.lisp
;;;; Extract a given number of randomly selected elements from a list

(in-package :99-questions)

(defun rnd-select (lst num)
  (unless (zerop num)
    (let ((selected (random (length lst))))
      (cons (nth selected lst)
            (rnd-select (remove-at lst selected)
                        (1- num))))))
