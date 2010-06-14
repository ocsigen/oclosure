
(** 
    * OClosure Project - 2010
    * Class goog.events.InputHandler.EventType, goog.events.InputHandler
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open EventTarget  (* goog.events.EventTarget *)
open BrowserEvent  (* goog.events.BrowserEvent *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)

class external inputHandler 
inherit eventTarget: element ->  <
handleEvent : browserEvent -> unit;
disposeInternal : unit;
> = "goog.events.InputHandler"
