(defun apl-apply (f x)
    (cond
         ((null (car f)) nil)
         (t (cons (apply (car f) (list (car x))) (apl-apply (cdr f) (cdr x))))
    )
)

(print (apl-apply '(list list list) '(1 2 3))); ((1) (2) (3)) 
