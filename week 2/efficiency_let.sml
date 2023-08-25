(* Eficiencia al momento de escribir programas de recursion*)

(*Este es un mal algoritmo ya que llama 
recursivamente a la misma funcion dis veces y cada una llama a 
dentro a la misma funcion 2 veces 
*)
fun bad_max(xs: int list) = 
    if null xs:
    then 0
    else if null (tl xs)
    then hd xs
    else if hd xs > bad_max(tl xs)
    then hd xs
    else bad_max(tl xs)

(*El problema es la llamada a la funcion lo que se debe hacer es guardar le valor
en una variable local*)
fun good_max(xs: int list) = 
    if null xs:
    then 0
    else if null (tl xs)
    then hd xs
    else 
        let val tl_ans = good_max(tl xs)
        in 
            if hd xs > tl_ans
            then hd xs
            else tl_ans
        end