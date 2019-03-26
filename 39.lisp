Определите функцию СИММЕТРИЧЕСКАЯ-РАЗНОСТЬ, формирующую множество из
элементов не входящих в оба множества.

(defun sym-diff (s1 s2)
  (append (remove-if #'(lambda (x) (member x s2)) s1)
          (remove-if #'(lambda (x) (member x s1)) s2)))

(print (sym-diff '(1 2 3 5) '(6 4 1 8 3))); (2 5 6 4 8) 
