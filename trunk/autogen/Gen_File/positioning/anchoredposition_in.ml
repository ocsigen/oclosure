
(** 
    * OClosure Project - 2010
    * Class goog.positioning.AnchoredPosition
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open AbstractPosition  (* goog.positioning.AbstractPosition *)
open Positioning  (* goog.positioning *)
open Box  (* goog.math.Box *)

class external anchoredPosition 
inherit abstractPosition: element -> corner ->  <
reposition : element -> corner -> box(* opt? *) -> unit;
> = "goog.positioning.AnchoredPosition"
