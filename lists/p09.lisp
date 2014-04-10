;;;; p09.lisp
;;;; Pack consecutive duplicates of list elements into sublists

(in-package :99-questions)

(defun group (lst)
  (when lst
    (if (equal (first lst)
               (second lst))
      (cons (first lst)
            (group (rest lst)))
      (list (first lst)))))

(defun after-group (lst)
  (if (equal (first lst)
             (second lst))
    (after-group (rest lst))
    (rest lst)))

(defun pack (lst)
  (when lst
    (cons (group lst)
          (pack (after-group lst)))))
