(define (eval-ast e)
  (match e
	[(number?) a]
	[(list + e1 e2)
	 	(let ([a1 (eval-ast e1)]
		      [a2 (eval-ast e2)])
		  (+ a1 a2))]))
;; similarly there would be cases for -, *
