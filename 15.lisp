;Задача 12
;Определите функцию, вычисляющую скалярное произведение векторов, 
;заданных списками целых чисел.

(defun scal-prod (v1 v2)
    (cond
         ((null v1) 0)
         ((null v2) 0)
         (t (+ (* (car v1) (car v2)) (scal-prod (cdr v1) (cdr v2)))))
    )

(print(scal-prod '(1 1 1 1) '(2 2 2 2))); 8

