
(** 
    * OClosure Project - 2010
    * Class goog.graphics.StrokeAndFillElement
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Element  (* goog.graphics.Element *)

class external strokeAndFillElement 
inherit element: element -> abstractGraphics -> stroke(* opt? *) -> fill(* opt? *) ->  <
setFill : fill(* opt? *) -> unit;
getFill : fill(* opt? *);
setStroke : stroke(* opt? *) -> unit;
getStroke : stroke(* opt? *);
reapplyStroke : unit;
> = "goog.graphics.StrokeAndFillElement"
