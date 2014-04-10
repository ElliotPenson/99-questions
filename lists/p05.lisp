;;;; p05.lisp
;;;; Reverse a list

(in-package :99-questions)

(defun backwards (lst)
  (let ((reversed '()))
    (mapcar (lambda (el)
              (push el reversed))
            lst)
    reversed))
