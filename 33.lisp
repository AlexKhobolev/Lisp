Определите функцию МНОЖЕСТВО, преобразующую список в множество.

(defun make-set (lst)
  (cond ((null lst) nil)
        (t (cons (car lst)(make-set (remove (car lst) (cdr lst)))))))

(print (make-set '(1 2 3 1 2 3 3 3 2 2))); (1 2 3) 
