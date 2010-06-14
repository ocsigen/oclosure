
(** 
    * OClosure Project - 2010
    * Class goog.events.BeforeActionEvent, goog.events.ActionHandler.EventType, goog.events.ActionHandler, goog.events.ActionEvent
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

class external actionHandler 
inherit eventTarget: element(* | document *) ->  <
disposeInternal : unit;
> = "goog.events.ActionHandler"

class external actionEvent 
inherit browserEvent: browserEvent(* opt? *) ->  <
> = "goog.events.ActionEvent"

class external beforeActionEvent 
inherit browserEvent: browserEvent(* opt? *) ->  <
> = "goog.events.BeforeActionEvent"
