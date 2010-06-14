
(** 
    * OClosure Project - 2010
    * Class goog.events.FocusHandler.EventType, goog.events.FocusHandler
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open EventTarget  (* goog.events.EventTarget *)
open BrowserEvent  (* goog.events.BrowserEvent *)
open Events  (* goog.events *)

class external focusHandler 
inherit eventTarget: element(* | document *) ->  <
handleEvent : browserEvent -> unit;
disposeInternal : unit;
> = "goog.events.FocusHandler"
