;;;; p21.lisp
;;;; Insert an element at a given posiition into a list

(in-package :99-problems)

(defun insert-at (item lst place)
  (if (= 1 place)
    (cons item lst)
    (cons (first lst)
          (insert-at item
                     (rest lst)
                     (1- place)))))
