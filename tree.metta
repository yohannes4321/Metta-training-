(: Tree type)
; Define the type for an empty tree
(: Nil Tree)
; Define the type for a node in a binary tree
(: Cons (-> Number Tree Tree) Tree)
; Define a node in the binary tree
(= (node $value $left $right) (Cons $value $left $right))

; Define a function to check if a tree is empty
(= (is-empty $tree)
   (if (Cons? $tree)
       False
       True))

; Define a function to get the value of a node
(= (get-value (Cons $value _ _) $tree) $value)

; Define a function to get the left subtree of a node
(= (get-left (Cons _ $left _) $tree) $left)

; Define a function to get the right subtree of a node
(= (get-right (Cons _ _ $right) $tree) $right)

; Define a function to create a binary tree with a given value and subtrees
(= (create-tree $value $left $right)
   (node $value $left $right))

; Define a function to traverse the tree in-order (left-root-right)
(= (in-order $tree)
   (if (is-empty $tree)
       Nil
       (append (in-order (get-left $tree))
               (Cons (get-value $tree) Nil)
               (in-order (get-right $tree)))))

; Helper function to append a list
(= (append $list1 $list2 $result)
   (if (is-empty $list1)
       (append $list2 $result)
       (node (get-value $list1) (append (get-tail $list1) $list2 $result))))

; Helper function to get the tail of a list
(= (get-tail (Cons _ $tail)) $tail)

! (create-tree 1
    (create-tree 2
        (create-tree 4 Nil Nil)
        (create-tree 5 Nil Nil))
    (create-tree 3
        (create-tree 6 Nil Nil)
        (create-tree 7 Nil Nil)))

;output
;[(Cons 1 (Cons 2 (Cons 4 Nil Nil) (Cons 5 Nil Nil)) (Cons 3 (Cons 6 Nil Nil) (Cons 7 Nil Nil)))]
