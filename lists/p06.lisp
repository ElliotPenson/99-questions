;;;; p06.lisp
;;;; Find out whether a list is a palindrome

(defun palindromep (lst)
  (equal lst (reverse lst)))
