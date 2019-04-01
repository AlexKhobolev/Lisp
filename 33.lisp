;Определите функцию МНОЖЕСТВО, преобразующую список в множество.

(defun make-set (lst)
  (cond ((null lst) nil)
        (t (cons (car lst)(make-set (remove lst))))))
;(defun remm (lst)
 ;  (if (eq (car lst) (cadr lst)) (caddr lst)))

(print (make-set '(1 2)))
