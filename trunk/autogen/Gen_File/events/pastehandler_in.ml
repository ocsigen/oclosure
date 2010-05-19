
(** 
    * OClosure Project - 2010
    * Class goog.events.PasteHandler.State, goog.events.PasteHandler.EventType, goog.events.PasteHandler
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open KeyCodes  (* goog.events.KeyCodes *)
open EventTarget  (* goog.events.EventTarget *)
open EventHandler  (* goog.events.EventHandler *)
open BrowserEvent  (* goog.events.BrowserEvent *)
open Logger  (* goog.debug.Logger *)

class external pasteHandler 
inherit eventTarget: element ->  <
disposeInternal : unit;
getState : state;
getEventHandler : eventHandler;
> = "goog.events.PasteHandler"
