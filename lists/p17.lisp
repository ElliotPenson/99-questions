;;;; p17.lisp
;;;; Split a list into two parts; the length of the first part is given

(in-package :99-questions)

(defun left (lst pos)
  (unless (zerop pos)
    (cons (first lst)
          (left (rest lst)
                (1- pos)))))

(defun right (lst pos)
  (if (zerop pos)
    lst
    (right (rest lst)
           (1- pos))))

(defun split (lst pos)
  (list (left lst pos)
        (right lst pos)))
