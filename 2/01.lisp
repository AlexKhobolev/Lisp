(defun funcalll (fn lst)
          (apply fn lst)
)

(print (funcalll '+ '(2 3 4)))
(print (funcalll '* '(2 3 4)))
