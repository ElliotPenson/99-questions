;;; p25.lisp
;;; Generate the combinations of k distinct objects chosen from n elements of
;;; a list

(in-package :99-questions)

(defun combination (size list)
  (cond ((minusp size) (error "Size must be positive"))
        ((zerop size) '(nil))
        (t (loop for sub-list on list
              append (loop for combo
                        in (combination (1- size)
                                        (rest sub-list))
                        collect (cons (first sub-list)
                                      combo))))))
