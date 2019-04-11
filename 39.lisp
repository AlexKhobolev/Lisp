;Задача 39
;Определите функцию СИММЕТРИЧЕСКАЯ-РАЗНОСТЬ, формирующую множество из
;элементов не входящих в оба множества.

(defun sim-dif (w v)
  (append (unique w v) (unique v w)))

(defun is-member (el arr)
    (cond
        ((null arr) NIL)
        ((= (car arr) el) T)
        (t (is-member el (cdr arr)))
    )
)
 
(defun unique (w v)
  (cond ((null w) nil)
        ((is-member (car w) v) (unique (cdr w) v))
        ((cons (car w) (unique (cdr w) v)))))
 
(print (sim-dif '(1 2 3 4 6) '(2 3 4 5 7))); ((1 5 6 7))
