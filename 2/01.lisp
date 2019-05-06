;1. Определите FUNCALL через функционал APPLY.

(defun funcalll (fn lst)
          (apply fn lst)
)

(print (funcalll '+ '(2 3 4))); 9 
(print (funcalll '* '(2 3 4))); 24
