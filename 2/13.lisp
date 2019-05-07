; 13.Определите функцию, которая возвращает в качестве значения свое определение (лямбда-выражение)

(defun return-lambda (x)
    ((lambda (x) x)
        '(lambda (x) x))
)


(print(return-lambda '(x))); (LAMBDA (X) X)
