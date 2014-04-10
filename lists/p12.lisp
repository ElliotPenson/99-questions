;;;; p12.lisp
;;;; Decode a run-length encoded list

(in-package :99-questions)

(defun decode (lst)
  (mapcan (lambda (el)
            (if (listp el)
              (loop repeat (first el)
                    collect (second el))
              (list el)))
          lst))
