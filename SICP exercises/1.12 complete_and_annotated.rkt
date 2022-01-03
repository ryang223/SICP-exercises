#lang scheme
;;1.12 Procedure for Pascal's triangle (The numbers at the edge of the triangle are all 1, and each number inside the triangle is the sum of the two
;;numbers above it. [recursively])

(define (pascal row col) 
   (cond ((< row col) #f) ;;if the column is larger than the row, return undefined,
         ((or (= 0 col) (= row col)) ;;or if the row and column is 0, return 1 as initial logic to keep us within the bounds of the triangle
          1)
         (else (+ (pascal (- row 1) col)  ;;the function recusrively calls upon pacal via summation of the previous row and same column
                  (pascal (- row 1) (- col 1))))));;added to the previous row and PREIVOUS column

(pascal 4 2)
;;shoulder return a value of 6, since that is the value in the 4th row and 2nd column
(pascal 3 4)
;;should return #f for undefined since every row of the the triangle contains exactly n columns internally hence the annotation on line #6.
;;The given number of columns must not exceed the rows