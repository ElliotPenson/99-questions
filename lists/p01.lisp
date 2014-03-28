;;;; p01.lisp
;;;; Find the last box of a list

(defun final (lst)
  (cond
    ((null lst) nil)
    ((null (cdr lst)) (car lst))
    (t (final (cdr lst)))))
