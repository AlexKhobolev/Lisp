;3. Определите функционал (APL-APPLY f x), который применяет каждую функцию fi списка
;(f1 f2 ... fn)
;к соответствующему элементу списка
;x = (x1 x2 ... xn)
;и возвращает список, сформированный из результатов.

(defun apl-apply (f x)
    (cond
         ((null (car f)) nil)
         (t (cons (apply (car f) (list (car x))) (apl-apply (cdr f) (cdr x))))
    )
)

(print (apl-apply '(list list list) '(1 2 3))); ((1) (2) (3)) 
