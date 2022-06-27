#lang racket
;; たらいまわし
(begin
  (define (f x y z)
		(cond (> x y)
			(f (f (- x 1) y z)
				(f (- y 1) z x)
				(f (- z 1) x y))
			(true y)
		)
	)
	(print (f 22 11 0))
)
