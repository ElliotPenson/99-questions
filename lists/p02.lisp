;;;; p02.lisp
;;;; Find the last but on box of a list

(defun last-but-one (lst)
  (cond
    ((null (cdr lst)) nil)
    ((null (cddr lst)) (car lst))
    (t (last-but-one (cdr lst)))))
