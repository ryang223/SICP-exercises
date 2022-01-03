#lang scheme
;1.26
;Louis gas written the procedure
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (* (expmod base (/ exp 2) m)
                       (expmod base (/ exp 2) m))
                    m))
                    (else
                     (reaminder (* base (expmod base (- exp 1) m))
                                m))))
;----and argues that he doesn't see the difference.
;His friend Eva Lu correctly states that the calling of square as seen below is more efficient; this is because it goes from an O(log n) process into a O(n) process.
;This is because instead of a linear recursion, the rewritten expmod generates a tree recursion,
;whose execution time grows exponentially with the depth of the tree, which is the logrithm of N.
;Therefore, the execution time is linear with N.

(define (square x) (* x x))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even ? exp)
         (remainder (squares (expmod base (/ exp 2) m))
                    m))
        (else
         (reaminder (* base (expmod base (= exp 1) m))
                    m))))

(define (feramt-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1))))