
(** 
    * OClosure Project - 2010
    * Class goog.positioning.MenuAnchoredPosition
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Overflow  (* goog.positioning.Overflow *)
open Corner  (* goog.positioning.Corner *)
open AnchoredViewportPosition  (* goog.positioning.AnchoredViewportPosition *)
open Positioning  (* goog.positioning *)
open Size  (* goog.math.Size *)
open Box  (* goog.math.Box *)

class external menuAnchoredPosition 
inherit anchoredViewportPosition: element -> corner -> boolean(* opt? *) -> boolean(* opt? *) ->  <
reposition : element -> corner -> box(* opt? *) -> size(* opt? *) -> unit;
> = "goog.positioning.MenuAnchoredPosition"
