(: List Type)
(: Nil List)
(: Cons (-> Number List List))

(=(max (Cons $x $xs) $max-value)
; the base is case is if xs == null
(if (== $xs Nil)
; 
    (if(> $x $max-value) $x $max-value) ; this is the basecase like the last element to be cheacked
    (if (> $x $max-value)
        (max $xs $x)
        (max $xs $max-value))


)
)
(=(max (Cons $x $xs))
(if(== $xs Nil )
$x
(max $xs $x)
))

!(max (Cons 3 (Cons 6 (Cons 1 Nil))))

