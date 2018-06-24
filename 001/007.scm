(define (delta guess x) (abs (-(* guess guess) x)))

(define (good-enough? guess x) (< (/ (delta guess x) guess) 0.001))

(define (average a b) (/ ( + a b) 2))

(define (improve guess x) (average guess (/ x guess)))


(define (sqrt-iter guess x)
  (if (good-enough? guess x) guess
          (sqrt-iter (improve guess x) x)
          )
  )

(sqrt-iter 1 9)
