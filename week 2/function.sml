(*Funciones definiciones: *)

val x = 7 

(*Ejemplo de una funcion en ml *)
fun pow(x:int,y:int) = 
    if y = 0   (* a**0 = 1*) 
    then 1 
    else x*pow(x,y-1)

fun cube(x:int) = 
    pow(x,3)

val sixtyfour = cube(4)
val fortytwo = pow(2,2+2) + pow(4,2) + cube(2) + 2 


(*Error en esta expression *)
(*val ans = pow 2,3*)

fun append_to_list(number:int,element_list) = 
    if element_list=[]
    then number
    else (hd element_list)::append(tl element_list,number)

fun map(f,xs) = 
    case xs of 
        [] => [] | x::xs' => (f,x)::(map(f,xs'))

val a = map(increment, [4,8,12,16])
val b = map(hd,[[8,6],[7,5],[3,0,9]])