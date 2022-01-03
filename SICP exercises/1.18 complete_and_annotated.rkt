#lang scheme
;;1.18 Usinbg the results of exercises 1.16 and 1.17,
;;devise a procedure that generates an iterative process for multiplying two integers in terms of adding, doubling, and halving
;;that uses a logarithmic number of steps

(define (multiply a b )
  (define (iter A B acc)
    (cond ((= B 0) acc))
    ((even? B) (iter (double A) (/ B 2) acc))
    (else (iter A (- B 1) (+ acc A)))))
(iter a b 0)