;;;; p14.lisp
;;;; Duplicate the elements of a list

(in-package :99-questions)

(defun duplicate (lst)
  (mapcan (lambda (el)
            (list el el))
          lst))
