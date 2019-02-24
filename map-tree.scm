#lang racket
(define (map-tree func tree)
  (cond ((null? tree) null)
        ((not (pair? tree)) (func tree))
        (else (cons (map-tree func (car tree))
                    (map-tree func (cdr tree))))))