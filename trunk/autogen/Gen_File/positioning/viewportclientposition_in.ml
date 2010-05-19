
(** 
    * OClosure Project - 2010
    * Class goog.positioning.ViewportClientPosition
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ClientPosition  (* goog.positioning.ClientPosition *)
open Size  (* goog.math.Size *)
open Coordinate  (* goog.math.Coordinate *)
open Box  (* goog.math.Box *)

class external viewportClientPosition 
inherit clientPosition: number(* | coordinate *) -> number(* opt? *) ->  <
reposition : element -> corner -> box(* opt? *) -> size(* opt? *) -> unit;
> = "goog.positioning.ViewportClientPosition"
