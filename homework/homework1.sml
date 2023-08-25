(* Esta es la tarea donde debo crear 11 funciones: *)
(* definimos una fecha como: int*int*int .*)

(* year * month * day  *)
(*  Escriba una función is_older que tome dos fechas y se evalúe como verdadero o falso. 
    Se evalúa como verdadero si el primer argumento es una fecha anterior al segundo 
    argumento. (Si las dos fechas son iguales, el resultado es falso.) *)

fun is_older(pair1: (int*int*int),pair2: (int*int*int)) = 
    if (#1 pair1) <= (#1 pair2) (* comprobacion de años *)
    then
        let 
        in
            if (#2 pair1) <= (#2 pair2)  (* comprobacion de mes 1-12 *)
            then 
                let 
                in 
                    if (#3 pair1) < (#3 pair2)
                    then true
                    else false 
                end
            else false
        end  
    else false  


(* Escriba una función número_en_mes que tome una lista de fechas y 
   un mes (es decir, un int) y devuelva cuántas fechas en la lista hay 
   en el mes dado.*)

fun number_in_month(xs: (int*int*int) list, m: int,cont: int) = 
    if null xs
    then cont
    else 
        let
            val new_value = (hd xs); 
            val new_cont = cont + 1;
        in
            if (#2 new_value) = m
            then
                number_in_month(tl xs,m,new_cont)
            else number_in_month(tl xs,m,cont)
        end

val cont_month_list = number_in_month([(1,2,3),(3,2,1)],2,0);


(*3. Escriba una función número_en_meses que tome una lista de 
     fechas y una lista de meses (es decir, una lista int) y devuelve 
     el número de fechas en la lista de fechas que están en cualquiera de los 
     meses en la lista de meses. Suponga que la lista de meses no tiene ningún 
     número repetido. Pista: Usa tu respuesta al problema anterior.*)

fun number_in_month(xs: (int*int*int) list,m_list: int list) = 
    if (null xs) andalso (null m_list)
    then NONE
    else
        let
        in
        end