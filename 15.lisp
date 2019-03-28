;Задача 12
;Определите функцию, вычисляющую скалярное произведение векторов, 
;заданных списками целых чисел.

(defun scal-prod (v1 v2)
    (cond
         ((null v1) nil)
         ((null v2) nil)
         (t (+ (* (car v1) (car v2)) (* (cadr v1) (cadr v2))))
    )
)
(print(scal-prod '(4 7) '(2 9)))


