;;;;;;;;;;;;;;;
;; Questions ;;
;;;;;;;;;;;;;;;

; Scheme

(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  'YOUR-CODE-HERE
  (car (cdr s))
  
)

(define (caddr s)
  'YOUR-CODE-HERE
  (car (cddr s))
)

(define (sign x)
  'YOUR-CODE-HERE
  (cond ((< x 0) -1)
        ((= x 0) 0)
        (else 1  )
))

(define (square x) (* x x))

(define (pow b n)
  'YOUR-CODE-HERE
    (cond ((= n 1) b)
          ((odd? n) (* (pow b (- n 1)) b))
          (else (square (pow b (/ n 2))))))

(define (unique s)
  'YOUR-CODE-HERE
    (if (null? s)
        ()
        (cons (car s)
              (unique (filter (lambda (x) (not (eq? x (car s)))) s)))))
  