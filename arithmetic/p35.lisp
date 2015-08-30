;;;; p35.lisp
;;;; Determine the prime factors of a given integer

(in-package :99-questions)

(defun prime-factors (number)
  "Provides a list of primes that when multiplied together produce the input
   integer. The algorithm uses a linear factor search method."
  (let ((current-prime 2) factors)
    (loop until (primep number)
       do (cond ((zerop (mod number current-prime))
                 ;; found a prime factor!
                 (push current-prime factors)
                 (setf number (/ number current-prime))
                 (setf current-prime 2))
                (t ; try the next prime number
                 (setf current-prime
                         (next-prime current-prime)))))
    (push number factors)
    factors))

(defun next-prime (number)
  "Finds the smallest prime that's larger than the input"
  (loop for successor from (1+ number)
     when (primep successor)
     return successor))
