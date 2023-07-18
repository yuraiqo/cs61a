(define (ascending? asc-lst)
    (cond
        ((or (null? asc-lst) (null? (cdr asc-lst))) #t)
        ((> (car asc-lst) (car (cdr asc-lst))) #f)
        (else (ascending? (cdr asc-lst)))
    )
)

(define (my-filter pred s) 'YOUR-CODE-HERE)

(define (interleave lst1 lst2) 'YOUR-CODE-HERE)

(define (no-repeats lst) 'YOUR-CODE-HERE)
