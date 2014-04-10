;;;; p10.lisp
;;;; Run-length encoding of a list

(in-package :99-questions)

(defun encode (lst)
  (mapcar (lambda (group)
            (list (length group)
                  (first group)))
          (pack lst)))
