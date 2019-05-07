; 9) 9. Напишите генератор порождения чисел Фибоначчи: 0, 1, 1, 2, 3, 5, ...

(defun fib ()
	(let
		((prev 0) (cur 1) (temp 0))
		(lambda () (and
			(setq temp cur)
			(setq cur (+ prev cur))
			(setq prev temp)
			temp
		))
	)
)

(setq gen1 (fib))
(setq gen2 (fib))
