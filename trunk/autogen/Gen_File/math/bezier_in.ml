
(** 
    * OClosure Project - 2010
    * Class goog.math.Bezier
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Coordinate  (* goog.math.Coordinate *)
open Math  (* goog.math *)

class external bezier : number -> number -> number -> number -> number -> number -> number -> number ->  <
clone : bezier;
equals : bezier -> boolean;
flip : unit;
getPoint : number -> coordinate;
subdivideLeft : number -> unit;
subdivideRight : number -> unit;
subdivide : number -> number -> unit;
> = "goog.math.Bezier"
