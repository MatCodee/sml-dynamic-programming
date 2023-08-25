(* Este es un comentario en este lenguaje *)
(* Tenemos un entorno dinamico y un entorno estatico*)

(* Entorno dinamico: 34*)
(* Entorno estatico: int *)
val x = 34; 

(* Entorno dinamico: 17*)
(* Entorno estatico: int *)
val y = 17;

(* Entorno dinamico: 70*)
(* Entorno estatico: int *)
val z = (x + y) + (y + 2);

val q = z + 1;

(* Entorno dinamico: 70*)
(* Entorno estatico: int *)
val abs_of_z = if z<0 then 0 - z else z;

(* llamando a funciones, podemos olvidarnos parentesis*)
val abs_of_z_simple = abs z;
