Определите функцию (ЛУКОВИЦА n), строящую N-уровневый вложенный список, 
элементом которого на самом глубоком уровне является N.

(defun onion-n (n &optional (m n))
  (if (zerop n) m (list (onion-n (1- n) m))))

(print (onion-n 7)); (((((((7)))))))




(defun onion-n (n)
  (cond
        ((null n) nil)
        (t (if (eq n 1) (list n))
           )))

(print (onion-n 1))



(defun onion-n (n)
  (cond
        ((null n) nil)
        (t (if (/= n 0) (- n 1)) )
           ))

(print (onion-n 1))
