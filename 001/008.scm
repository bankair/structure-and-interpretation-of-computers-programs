(define (good-enough? guess x) (< (/ (abs (-(* guess guess guess) x)) guess) 0.001))

(define (improve y x) ( / (+ (/ x (* y y)) (* 2 y)) 3))

(define (cbrt-iter guess x)
  (if (good-enough? guess x) guess
          (cbrt-iter (improve guess x) x)
          )
  )

(cbrt-iter 1 8) ; => 2
