;;;; p03.lisp
;;;; Find the k'th element of a list

(defun kth (lst k)
  (if (= k 0)
    (first lst)
    (kth (rest lst) (1- k))))
