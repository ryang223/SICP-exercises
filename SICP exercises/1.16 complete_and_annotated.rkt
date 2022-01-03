#lang scheme
;;1.16 an iterative procedure that performs sucessive squaring
;;while using a logarithmic number of steps

(define (fast-expt b n)
  (define (iter squares extra N)
    (cond ((= N 1) (* squares extra))
          ((even? N) (iter (square squares) extra (/ N 2)))
          (else (iter squares (* extra squares) (- N 1))))))