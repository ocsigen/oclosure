
(** 
    * OClosure Project - 2010
    * Class goog.graphics.Element
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Math  (* goog.math *)
open AffineTransform  (* goog.graphics.AffineTransform *)
open EventTarget  (* goog.events.EventTarget *)
open Events  (* goog.events *)

class external element 
inherit eventTarget: element -> abstractGraphics ->  <
getElement : element;
getGraphics : abstractGraphics;
setTransformation : number -> number -> number -> number -> number -> unit;
getTransform : affineTransform;
addEventListener : string -> function -> boolean(* opt? *) -> object(* opt? *) -> unit;
removeEventListener : string -> function -> boolean(* opt? *) -> object(* opt? *) -> unit;
disposeInternal : unit;
> = "goog.graphics.Element"
