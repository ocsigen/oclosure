
(** 
    * OClosure Project - 2010
    * Class goog.positioning.AbsolutePosition
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open AbstractPosition  (* goog.positioning.AbstractPosition *)
open Positioning  (* goog.positioning *)
open Size  (* goog.math.Size *)
open Coordinate  (* goog.math.Coordinate *)
open Box  (* goog.math.Box *)

class external absolutePosition 
inherit abstractPosition: number(* | coordinate(* opt? *) *) -> number(* opt? *) ->  <
reposition : element -> corner -> box(* opt? *) -> size(* opt? *) -> unit;
> = "goog.positioning.AbsolutePosition"
