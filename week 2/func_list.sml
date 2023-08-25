(* Listas de funciones *)

(* Esta es una funcion que va a sumaer los elementos de la lista*)
fun sum_list (xs : int list) = 
    if null xs
    then 0
    else hd xs + sum_list(tl xs)

(* multiplica los elementos d ela lista *)
fun multiply_list(x :int list) = 
    if null x
    then 1
    else hd x * sum_multiply(tl x)



(* contado hacia abajo de los elementos dado un numero*)
fun count_down(x: int ) = 
    if x=0
    then []
    else x :: count_down(x-1)

(* Agregamos elemento de una lista a otra lista*)
fun append_element(xs : int list, ys int list) = 
    if null xs
    then ys
    else (hd xs ) :: (append_element((tl xs),ys))


(* Esta es la suma de tuplas dentro de una lista  *)
fun sum_pairs_list(xs : (int*int) list) = 
    if null xs
    then 0
    else #1 (hd xs) + #2 (hd xs) + sum_pairs_list(tl xs)