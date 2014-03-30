;;;; p08.lisp
;;;; Eliminate consecutive duplicates of list elements

(defun compress (lst)
  (when lst
    (if (equal (first lst)
               (second lst))
      (compress (rest lst))
      (cons (first lst)
            (compress (rest lst))))))
