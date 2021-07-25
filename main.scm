(define (f-recursive n)
  (cond ((< n 3) n)
        (else (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3)))))))

(define (f n)
  (define (f-iter a b c i)
    (if (= i 3)
        (+ a (* 2 b) (* 3 c))
        (f-iter (+ a (* 2 b) (* 3 c)) a b (- i 1))))
  (if (< n 3)
      n
      (f-iter 2 1 0 n)))