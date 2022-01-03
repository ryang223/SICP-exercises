#lang scheme
;;1.17
;;A recursivve solution that (if even) divides integer a by 2,
;doubles integer b if a is even,
;else (if odd) subtracts a by 1 a then multiplies it by B and
;lastly adding to the recursive case of B  
(define (multiply a b)
  (cond ((= a 0) 0)
        ((even? a) (multiply (/ a 2) (double b)))
        (else (+ b (multiply (- a 1) b))))) 