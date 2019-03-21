(defun skalar (a b)
((lambda (x y)
(+ (* x y) ((lambda (x y) (* x y)) (cadr a) (cadr b))))
(car a) (car b))
)

(print (skalar '(1 1) '(2 2)))
