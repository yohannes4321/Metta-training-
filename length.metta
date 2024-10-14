(: List type)
(: Nil List)
(: Cons (-> Number List List))
(=(length Nil)0)  ; we use the recurssion part so we have the base case of nil and increament by 1 
(=(length (Cons $x $xs))(+ 1(length $xs) ))
!(length (Cons A(Cons r (Cons g Nil))))
