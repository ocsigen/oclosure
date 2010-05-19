
(** 
    * OClosure Project - 2010
    * Class goog.ui.CharCounter.Display, goog.ui.CharCounter
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open InputHandler  (* goog.events.InputHandler *)
open EventTarget  (* goog.events.EventTarget *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)

class external charCounter 
inherit eventTarget: hTMLInputElement(* | hTMLTextAreaElement *) -> element -> number -> display(* opt? *) ->  <
setMaxLength : number -> unit;
getMaxLength : number;
setDisplayMode : display(* opt? *) -> unit;
getDisplayMode : display(* opt? *);
disposeInternal : unit;
> = "goog.ui.CharCounter"
