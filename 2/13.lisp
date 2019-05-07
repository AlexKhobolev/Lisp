; 13. Определите функцию, которая возвращает в качестве значения свое определение (лямбда-выражение).

(defun lambda-return (x)
    ((lambda (x) x)
        '(lambda (x) x))
)


(print(lambda-return '(x))); (LAMBDA (X) X)
