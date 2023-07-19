(define (ascending? asc-lst)
    (cond
        ((or (null? asc-lst) (null? (cdr asc-lst))) #t)
        ((> (car asc-lst) (car (cdr asc-lst))) #f)
        (else (ascending? (cdr asc-lst)))
    )
)

(define (my-filter pred s)
    (define lst ())
    (cond
        ((null? s) lst)
        ((pred (car s)) (append lst (list (car s)) (my-filter pred (cdr s))))
        (else (append lst (my-filter pred (cdr s))))
    )
)

(define (interleave lst1 lst2)
    (cond 
        ((null? lst1) lst2)
        ((null? lst2) lst1)
        (else (cons (car lst1) (interleave lst2 (cdr lst1))))
    )
)

(define (no-repeats lst)
    (if (null? lst) lst
        (cons (car lst)
            (no-repeats (my-filter (lambda (x) (not (= (car lst) x))) (cdr lst)))))
)
