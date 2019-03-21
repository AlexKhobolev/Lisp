 (defun delete_couple (list)
 (cond
 ((null list) nil)
 (t ((lambda (head tail)
 (cons head (delete_couple (if (eq head (car tail)) (cdr tail) tail )))) (car list) (car list)))
 )
 )
 (print (delete_couple '(a a b b n n)))
