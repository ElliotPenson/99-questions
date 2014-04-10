;;;; p08.lisp
;;;; Eliminate consecutive duplicates of list elements

(in-package :99-questions)

(defun compress (lst)
  (when lst
    (if (equal (first lst)
               (second lst))
      (compress (rest lst))
      (cons (first lst)
            (compress (rest lst))))))
