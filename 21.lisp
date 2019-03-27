Определите функцию, удаляющую из списка первое вхождение 
данного элемента на верхнем уровне.

(defun del (L X)
 (cond
  ((null L) nil)
  ((equal (car L) X) (cdr L))
  (T (cons (car L) (del (cdr L) X)))))

(print (del '(7 7 (8 8)) 7)); (7 (8 8))
(print (del '(7 7 (8 8)) 8)); (7 7 (8 8)) 
