;;;; p20.lisp
;;;; Remove the k'th element from a list (zero-based numbering)

(in-package :99-problems)

(defun remove-at (lst place)
  (if (zerop place)
    (rest lst)
    (cons (first lst)
          (remove-at (rest lst)
                     (1- place)))))
