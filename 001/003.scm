(define (smaller a b c) (and (< a b) (< a c)))

(define (sum-of-squares x y) (+ (* x x) (* y y)))

(define (sum-of-squares-of-larger a b c)
  (cond ((smaller a b c) (sum-of-squares b c))
        ((smaller b a c) (sum-of-squares a c))
        (else (sum-of-squares a b))
  ))
