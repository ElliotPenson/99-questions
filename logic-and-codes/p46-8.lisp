;;;; p46-8.lisp
;;;; Truth tables for logical expressions

(in-package :99-questions)

(defun nand (x y) (not (and x y)))
(defun nor (x y) (not (or x y)))
(defun xor (x y) (or (and x (not y))
                     (and (not x) y)))
(defun impl (x y) (declare (ignore x y)))
(defun equ (x y) (eql x y))

(defmacro table (variables expression &optional (stream t))
  "Exports a truth table given a list of variable names and an
   arbitrary expression"
  (labels ((nested (arguments)
             (if arguments
                 `(dolist (,(first arguments) '(t nil))
                    ,(nested (rest arguments)))
                 `(format ,stream "~{~:[false ~;true ~]~}~%"
                             (list ,@variables ,expression)))))
    (nested variables)))
