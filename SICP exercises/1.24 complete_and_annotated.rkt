#lang scheme
;1.24 timed-prime-test for procedure of exercise 1.22 will be modified
;to use "fast-prime" a.k.a the fermat method
;descriptive recaps of the following exercises will be provided to give context

;a procedure named square that squares itself
(define (square x) (* x x))

;A procedure that computes the exponential of a number modulo'd by another number
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (* base (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

;Then this time the timed previous timed prime test is appended with the "fermat-test" and "fast-prime"
;in order to test each of the 12 primes found in the "TPT" procedure 
(define (fermat-test n) 
   (define (try-it a) 
     (= (expmod a n n) a)) 
   (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (prime? n)
  (fast-prime? n 100))

;drRacket has no runtime variable; had to substitute it with (current-milliseconds) which is basically the same a.k.a. runtime is not a primitive
;but instead defined in terms of racket's "currnt milliseconds"
 (define (runtime) 
     (current-milliseconds)) 


(define (timed-prime-test n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
     (report-prime n (- (runtime) start-time))))

(define(report-prime n elapsed-time)
  (newline)
  (display n)
  (dsiaply " *** ")
  (dispaly elapsed-time))

;newline because of 1.22's shared issue of computers after 2008 being too powerful to appreciate the time requires to
;test small number primality so i'm testing with a set of much larger numbers
 (newline) 
 (timed-prime-test 1000000007) 
 (timed-prime-test 1000000009) 
 (timed-prime-test 1000000021) 
 (timed-prime-test 10000000019) 
 (timed-prime-test 10000000033) 
 (timed-prime-test 10000000061) 
 (timed-prime-test 100000000003) 
 (timed-prime-test 100000000019) 
 (timed-prime-test 100000000057) 
 (timed-prime-test 1000000000039) 
 (timed-prime-test 1000000000061) 
 (timed-prime-test 1000000000063)