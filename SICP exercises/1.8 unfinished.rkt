#lang scheme
;;1.8 un-finished

(define (apply-until step done? x)
  (if (done? x) x)
  (apply-until (step x) step done?))

(define(cuberoot x)
  (apply-until
   (lambada (y) (improve-guess y x))
   (lambda (guess)(goodneough? guess) 1.0)))

(define (cuberoot x)
  (define (improveguess y))
  ; y is a guess for cuberoot(x)
  (/ (+ (/ x(expt y 2)) (* 2 y)) 3))

(define (goodneough? guess)
  (< (/ (abs (- (cube guess) x)) guess) 0.00001))

(apply-until improveguess goodenough? 1.0)