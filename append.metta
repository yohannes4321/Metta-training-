; Define List type
(: List type)
(: Nil List)
(: Cons (-> Number List List))

; Recursive case: append a number to the end of a non-empty list
(= (append (Cons $x $xs) $numb)
   (Cons $x (append $xs $numb)))

; Base case: append a number to an empty list
(= (append Nil $numb)
   (Cons $numb Nil))

; Test case: append 4 to the list (1 2 3)
!(append (Cons 1 (Cons 2 (Cons 3 Nil))) 4)  ; Should return (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil))))

