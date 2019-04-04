;Определите функцию МНОЖЕСТВО, преобразующую список в множество.

(defun is-member (el arr)
    (cond
        ((null arr) NIL)
        ((= (car arr) el) T)
        (t (is-member el (cdr arr)))
    )
)

(defun create-set (arr)
    ((lambda (first rest)
        (cond
            ((null arr) NIL)
            ((is-member first (create-set rest)) (create-set rest))
            (t (cons first (create-set rest)))
        )
    ) (car arr) (cdr arr))
)

(print (create-set '(1 2 3 3))); (1 2 3)

;2
(defun is-member (el arr)
    (cond
        ((null arr) NIL)
        ((= (car arr) el) T)
        (t (is-member el (cdr arr)))
    )
)

(defun create-set (arr)
    ((lambda (first rest)
        (cond
            ((null arr) NIL)
            ((is-member first rest) rest)
            (t (cons first rest))
        )
    ) (car arr) (create-set (cdr arr)))
)

(print (create-set '(1 2 2 3 3 3)))
