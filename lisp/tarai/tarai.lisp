;; common lisp
;; たらいまわし
(progn
  (defun f (x y z)
		(cond ((> x y)
			(f 
				(f (1- x) y z)
				(f (1- y) z x)
				(f (1- z) x y) ))
		(t y) ))
	(print 
		(f 8 4 0 )
	) 
)
