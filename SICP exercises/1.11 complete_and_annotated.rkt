#lang scheme
;;1.11 A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n -
;3) if n> 3. Write a procedure that computes f by means of a recursive process. Write a procedure that
;computes f by means of an iterative process.

;Recrusive solution
;;(define (f n) 
 ;;(if (< n 3)
 ;;    n
 ;;    (+ (f (- n 1)) 
 ;;       (* 2 (f (- n 2)))
 ;;       (* 3 (f (- n 3))))))


;;Iterative solution

(define (f n) ;;f takes the single paramter of n
  (f-iter 0 1 2 n)) ;;we pass 0, 1, 2, and n into the function

(define (f-iter a b c count) ;;a, b, and c are our accumulator values and count is what we will eventually reduce to zero
  (cond ((= 0 count) a)
        (else (f-iter b
                      c
                      (+ c
                         (* 2 b)
                         (* 3 a))
                      (- count 1)))))

(map f (range 10))