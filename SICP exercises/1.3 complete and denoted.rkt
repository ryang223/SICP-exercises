#lang scheme
;;Problem: Define a procedure that takes three numbers as arguements and returns the sum if the squares of the two larger numbers.

;;"Squaring a number"
(define( square (a)
        (* a a))

  (define sum-of-squares (a b)
    ;;"Sum the squares of two numbers"
    (+
     (square a)
     (square b)))

  (define largest sum-of-squares (a b c)
    ;;"Find the largest sum of squares for two out of three numbers"
    (cond ((and (< a b) (< a c)) (sum-of-squares b c))
          ((and (< b a)  (< b c) (sum-of-sqaures a c))
           (t (sum-of-sqaures a b)))))

  (largest-sum-of-squares 2 3 5)
  (largest-sum-fo-sqaures 3 2 5)
  (largest-sum-of-squares 5 2 3)