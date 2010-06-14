
(** 
    * OClosure Project - 2010
    * Class goog.positioning.AbstractPosition
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Corner  (* goog.positioning.Corner *)
open Size  (* goog.math.Size *)
open Box  (* goog.math.Box *)

class external abstractPosition :  <
reposition : element -> corner -> box(* opt? *) -> size(* opt? *) -> unit;
> = "goog.positioning.AbstractPosition"
