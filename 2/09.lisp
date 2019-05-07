; 9. Напишите генератор порождения чисел Фибоначчи: 0, 1, 1, 2, 3, 5, ...

(defun fib-gen ()
	(let
		((x 0) (y 1) (temp 0))
		(lambda () (and
			(setq temp y)
			(setq y (+ x y))
			(setq x temp)
			temp
		))
	)
)

(setq g1 (fib-gen))
(setq g2 (fib-gen))

(print (funcall g1));1
(print (funcall g2));1
(print (funcall g1));1
(print (funcall g2));1
(print (funcall g1));2
(print (funcall g2));2
(print (funcall g1));3
(print (funcall g2));3
(print (funcall g1));5
(print (funcall g2));5
