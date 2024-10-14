(: List type)
(: Nil List)
(: Cons (-> Number List List))

; Define the is-member function
(= (is-member (Cons $x $xs) $member)
   (if (== $x $member)
       True
       (is-member $xs $member)))

; Base case: if the list is empty (Nil), return False
(= (is-member Nil $member) False)

; Test case to check if 3 is in the list (7 2 3)
!(is-member (Cons 7 (Cons 2 (Cons 3 Nil))) 3)  ;
