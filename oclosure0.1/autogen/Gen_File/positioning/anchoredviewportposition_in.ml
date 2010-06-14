
(** 
    * OClosure Project - 2010
    * Class goog.positioning.AnchoredViewportPosition
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open OverflowStatus  (* goog.positioning.OverflowStatus *)
open Overflow  (* goog.positioning.Overflow *)
open Corner  (* goog.positioning.Corner *)
open AnchoredPosition  (* goog.positioning.AnchoredPosition *)
open Positioning  (* goog.positioning *)
open Box  (* goog.math.Box *)

class external anchoredViewportPosition 
inherit anchoredPosition: element -> corner -> boolean(* opt? *) ->  <
reposition : element -> corner -> box(* opt? *) -> size(* opt? *) -> unit;
> = "goog.positioning.AnchoredViewportPosition"
