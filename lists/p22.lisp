;;;; p22.lisp
;;;; Create a list containing all integers within a given range

(defun range (start end)
  (cond ((= start end) (list start))
        ((< start end) (cons start (range (1+ start) end)))
        (t (cons start (range (1- start) end)))))
