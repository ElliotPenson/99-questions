;;;; p07.lisp
;;;; Flatten a nested list structure

(in-package :99-questions)

(defun flatten (lst)
  (cond
    ((not (listp lst)) (list lst))
    (lst (append (flatten (first lst))
                 (flatten (rest lst))))))
