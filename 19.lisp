(defun onion-n (n &optional (m n))
  (cond
        ((eq n 0) 0)
        (t (list (if (eq n 1) (ret m) (onion-n (1- n)))) )
           ))
(defun ret (n) 
        (n)
    )
(print (onion-n 4))
