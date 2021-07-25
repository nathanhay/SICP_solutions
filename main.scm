; Solution to exercise 1.11 from Structure and Interpretation  of Computer Programs
; "A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3. Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process.'

(define (f-recursive n)
  (cond ((< n 3) n)
        (else (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3)))))))

(define (f n)
  (define (f-iter a b c i)
    (if (= i 3)
        (+ a (* 2 b) (* 3 c)) ; base case
        (f-iter (+ a (* 2 b) (* 3 c)) a b (- i 1)))) ; inductive step
  (if (< n 3)
      n
      (f-iter 2 1 0 n)))