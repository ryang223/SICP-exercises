#lang scheme
;Problem: Exercise 1.10 The following procedure computes a mathematical
;function called Ackermann's function,
(define (A x y)
  (cond ((= y 0) 0)
  ((= x 0) (* 2 y))
  (( = y 1) 2)
  (else (A (- x 1)
           (A x (- y 1))))))

;give us concise mathematical definitions for the following functions:

;{1}(define (f n) (A 0 n))
;{2}(define (g n) (A 1 n))
;{3}(define (h n) (A 2 n))
(define (f n) (A 0 n)
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))