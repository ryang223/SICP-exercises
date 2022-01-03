#lang scheme
;1.25 Alyssa argues that orginial expmod~~~~~
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))

        (else
         (remainde3r (* base (expmod base (- exp 1) m))
                     m))))
;To answer the question of would Alyssa's procedure (below) "we could simply use fast-expt". This would not have worked as well for our
;prime tester because the remainder operation not seen integrated into the second solution fufills fermat's test condition of
;"for any N, the condition does not hold for most of the integers a<n unless n is prime. This means we get the same results but with additonal "expmods"
;to filter through since the remainder eliminates numbers being squares less than "m" being numebers tested for primality.

;Alyssa's procedure
(define (expmod base exp m)
  (reaminder (fast-expt base exp) m))