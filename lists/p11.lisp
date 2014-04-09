;;;; p11.lisp
;;;; Modified run-length encoding

(defun encode-modified (lst)
  (mapcar (lambda (group)
            (if (rest group)
              (list (length group)
                    (first group))
              (first group)))
          (pack lst)))
