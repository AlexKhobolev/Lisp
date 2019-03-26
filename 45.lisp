Предположим, что у имени города есть свойства х и у, которые содержат 
координаты места нахождения города относительно некоторого начала координат.
Напишите функцию (РАССТОЯНИЕ a b), вычисляющую расстояние между городами а и b.

(defun ^2 (x)
    (* x x)
)

(defun set-city (name x y)
    (setf (get name 'x) x)
    (setf (get name 'y) y)
)

(defun get-coords (name)
    (list (get name 'x) (get name 'y))
)

(defun dist (c1 c2)
    (sqrt
        ((lambda (l1 l2) ( +
                            (^2  (- (car l1) (car l2)))
                            (^2  (- (cadr l1) (cadr l2)))
                         )
         ) (get-coords c1) (get-coords c2)
        )
    )
)

(set-city 'city1 0 0)
(set-city 'city2 5 5)
(set-city 'city3 6 7)
(print (dist 'city1 'city2)); 7.071068 
(print (dist 'city1 'city1)); 0 
(print (dist 'city1 'city3)); 9.219544 
(print (dist 'city3 'city2)); 2.236068
