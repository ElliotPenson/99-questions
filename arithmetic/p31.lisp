;;;; p31.lisp
;;;; Determine whether a given integer number is prime

(in-package :99-questions)

(defun primep (n)
  (= n (first (last (prime-list n)))))

;;; Sieve of Eratosthenes
(defun prime-list (max)
  (let ((numbers (make-array (1+ max) :initial-element t)))
    (loop for contender from 2 to max
       when (aref numbers contender)
       collect contender
       do (loop for multiple from contender to max by contender
	     do (setf (aref numbers multiple) nil)))))
	 
