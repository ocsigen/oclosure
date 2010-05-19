
(** 
    * OClosure Project - 2010
    * Class goog.events.MouseWheelHandler.EventType, goog.events.MouseWheelHandler, goog.events.MouseWheelEvent
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Math  (* goog.math *)
open EventTarget  (* goog.events.EventTarget *)
open BrowserEvent  (* goog.events.BrowserEvent *)
open Events  (* goog.events *)

class external mouseWheelHandler 
inherit eventTarget: element(* | document *) ->  <
setMaxDeltaX : number -> unit;
setMaxDeltaY : number -> unit;
handleEvent : browserEvent -> unit;
disposeInternal : unit;
> = "goog.events.MouseWheelHandler"

class external mouseWheelEvent 
inherit browserEvent: number -> event -> number -> number ->  <
> = "goog.events.MouseWheelEvent"
