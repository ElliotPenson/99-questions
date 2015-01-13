;;;; p54.lisp
;;;; Check whether a given term represents a binary tree. Where a tree is
;;;; is defined as Tree -> '() | '(Atom Tree Tree)

(in-package :99-questions)

(defun treep (lst)
  (or (null lst)
      (and (= (length lst) 3)
	   (atom (first lst))
	   (treep (second lst))
	   (treep (third lst)))))
