 ;           Write the following list operations in MeTTa:
 ; length, is-member, append, max-value,  min-value, push, pop, remove-element, remove-duplicate, map, filter, foldl, foldr, reverse, sort

; defining the infinity and -infinity since there is no built-in infinity in MeTTa
 (: inf Number)
 (= (inf) 9223372036854775807)     ; 2^63 - 1 Signed 64-bit the largest value  :)
 (: -inf Number)
 (= (-inf) -9223372036854775808)   ; -2^63 Signed 64-bit the smallest value    :) 

 ; length
(= (length ()) 0)
(= (length (| $x $xs))
    (+ 1 (length $xs))) 
 ;!(length (| A (| B (| C ()))))

(= (is-member $a ()) False)
(= (is-member $a ($x $xs))
    (or (== $a $x)
        (is-member $a $xs)))
;!(is-member 3 (1 (2 (3 ()))))

(= (append () $ele) (| $ele ()))
(= (append (| $x $xs) $ele)
    (| $x (append $xs $ele)))
;!(append (| 1 (| 2 (| 3 ()))) 4)

(= (max-val () $max) $max)
(= (max-val (| $x $xs) $max)
  (if (> $x $max)
        (max-val $xs $x)
        (max-val $xs $max)))
;!(max-val (| 1 (| 20 (| 3 ()))) (-inf))

(= (min-val () $min) $min)
(= (min-val (| $x $xs) $min)
  (if (< $x $min)
        (min-val $xs $x)
        (min-val $xs $min)))
;!(min-val (| 10 (| 20 (| -15 ()))) (inf))

(= (push $ele $list) (| $ele $list)) ; pushing associated with adding an element to the beginning (front) of a list or to the top of a stack.
;!(push 0 (| 1 (| 2 (| 3 ()))))

(= (pop (| $x $xs)) $xs) 
;! (pop (| 1 (| 2 (| 3 ()))))


