
(** 
    * OClosure Project - 2010
    * Class goog.positioning.ViewportPosition
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open AbstractPosition  (* goog.positioning.AbstractPosition *)
open Size  (* goog.math.Size *)
open Coordinate  (* goog.math.Coordinate *)
open Box  (* goog.math.Box *)

class external viewportPosition 
inherit abstractPosition: number(* | coordinate *) -> number(* opt? *) ->  <
reposition : element -> corner -> box(* opt? *) -> size(* opt? *) -> unit;
> = "goog.positioning.ViewportPosition"
