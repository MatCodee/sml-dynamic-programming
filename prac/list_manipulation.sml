
(* Agregar un elemento a la lista*)
fun add_element_to_list(xs: int list,x: int) =
    if null xs
    then x::[]
    else (x) :: (xs)

val e1 = add_element_to_list([1,2,3],4);
val e2 = add_element_to_list([],4);

