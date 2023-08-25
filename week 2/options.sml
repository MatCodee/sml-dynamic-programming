(* una mejor forma de retornar valores correctos en el 
es usadno options *)

(* fn: int list -> int option *)
fun max_1(xs: int list) = 
    if null xs
    then NONE
    else 
        let 
            val tl_ans = max_1(tl xs)
        in 
            if isSome tl_ans andalso valof tl_ans > hd xs
            then tl_ans
            else SOME(hd xs)
        end

        