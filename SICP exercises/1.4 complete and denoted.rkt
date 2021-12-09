#lang scheme
;;Problem: the following model allows evalutation for combinations whose operators are compound expressions.

(define (a-plus-abs-b a b)
  ;; the above statements works via having the usual operators replaced by combinations within the IF statement.
  (if (> b 0) + -) a b))
  ;; This^ is a condensed version of the following procedure which also states the outcomes of the "a-plus-abs-b a b" procedure that iterates upon the outcomes of the same IF statement.


(define (a-plus-abs-b a b)
   (if (> b 0) ;;If B is 0
       (+ b a) ;; add b to a
       (+ (- b) a))) ;;otherwise decrement b by a