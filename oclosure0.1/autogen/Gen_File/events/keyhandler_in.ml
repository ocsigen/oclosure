
(** 
    * OClosure Project - 2010
    * Class goog.events.KeyHandler.EventType, goog.events.KeyHandler, goog.events.KeyEvent
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open KeyCodes  (* goog.events.KeyCodes *)
open EventType  (* goog.events.EventType *)
open EventTarget  (* goog.events.EventTarget *)
open BrowserEvent  (* goog.events.BrowserEvent *)
open Events  (* goog.events *)

class external keyHandler 
inherit eventTarget: element(* | document(* opt? *) *) ->  <
handleEvent : browserEvent -> unit;
getElement : element(* | document| null *);
attach : element(* | document *) -> unit;
detach : unit;
disposeInternal : unit;
> = "goog.events.KeyHandler"

class external keyEvent 
inherit browserEvent: number -> number -> boolean -> event ->  <
> = "goog.events.KeyEvent"
