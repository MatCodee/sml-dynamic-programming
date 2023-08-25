(* Listas en el lenguaje de sml *)
[];

[1,2,3,4,5,6,7,8,9];
(* Listas de elementos no iguales generar un error de tipos *)
val x = [1,2,3,4,5];
5::x;  (* coloca el 5 adelante de la lista*)
x;      
null x; (* verficia si la lista esta vacia*)
hd x;   (* regresa el primer valor de la lista*)
tl x;   (* todos los valores menos el primero  n +1  *)
tl (tl x); 
hd (tl x); 
tl (tl (tl x));
tl (tl (tl (tl x)));


(* Problema del ejercicio: *)
val list_element = [5,1,6,8];
hd list_element;
hd ( tl (list_element)); (* Se ejecutan los procesos siguiendo el orden de los parentesis*)