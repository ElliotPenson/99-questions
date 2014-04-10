;;;; p11.lisp
;;;; Modified run-length encoding

(in-package :99-questions)

(defun encode-modified (lst)
  (mapcar (lambda (group)
            (if (rest group)
              (list (length group)
                    (first group))
              (first group)))
          (pack lst)))
