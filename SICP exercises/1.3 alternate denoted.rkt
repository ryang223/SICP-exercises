#lang racket
;;1.1.3 alternate: (define (sum-square-two-largest 1st) Problem: Define a procedure that takes three numbers as arguements
;;and returns the sum of the squares of the two larger numbers.

;;This solution uses the Racket dialect and determines the problem given in ex.1.3 via a lambda process known as "threading"
(define (sum-sqaure-two-largest 1st)
(~> 1st 
     (sort >)
     (take 2)
     (map (λ (x) (* x x))_)
     (foldl + 0 _))