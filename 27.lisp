;Задача 27
;Определите функцию, которая, чередуя элементы списков (a b...) и (1 2...),
;образует новый список (a 1 b 2 ...).

(defun zip (x y) (cond ((null x) y)
                       ((null y) x)
                       (t (cons (car x) (cons (car y) 
                       (zip (cdr x) (cdr y)))))))

(print (zip '(1 2 3 4 5) '(a b c d e))); (1 A 2 B 3 C 4 D 5 E) 
