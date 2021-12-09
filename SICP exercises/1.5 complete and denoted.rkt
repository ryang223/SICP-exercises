#lang scheme
;; Problem: explain what behavior Ben Bitdiddle will observe when he feeds the prodcedure which interprets based on applicative vs. normal order evaluation?


(define (p) (p)) ;;procedure is recursive since the body calls upon itself; there is no base case so if called it will loop infinitel, this is because when P is called there is no conjoining recursive case. 

(define (test x y)
  (if (= x 0) ;;(if x is not 0 give user y)
      0
      y))

(test 0 (p))

;;Solution: Scheme is an applicative order language so it applies the arguement before the procedure; elsewise the opposite is true;
;;with procedures being evaluated first then the arguements applied afterwards...

