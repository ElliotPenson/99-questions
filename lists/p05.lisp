;;;; p05.lisp
;;;; Reverse a list

(defun backwards (lst)
  (let ((reversed '()))
    (mapcar (lambda (el)
              (push el reversed))
            lst)
    reversed))
