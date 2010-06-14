
(** 
    * OClosure Project - 2010
    * Class goog.math.Line
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Coordinate  (* goog.math.Coordinate *)
open Math  (* goog.math *)

class external line : number -> number -> number -> number ->  <
clone : line;
equals : line -> boolean;
getSegmentLengthSquared : number;
getSegmentLength : number;
getClosestPoint : number(* | coordinate *) -> number(* opt? *) -> coordinate;
> = "goog.math.Line"
