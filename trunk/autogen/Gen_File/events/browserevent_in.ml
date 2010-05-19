
(** 
    * OClosure Project - 2010
    * Class goog.events.BrowserEvent.MouseButton, goog.events.BrowserEvent
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Event  (* goog.events.Event *)

class external browserEvent 
inherit event: event(* opt? *) -> node(* opt? *) ->  <
init : event -> node(* opt? *) -> unit;
isButton : mouseButton -> boolean;
stopPropagation : unit;
preventDefault : unit;
getBrowserEvent : event;
disposeInternal : unit;
> = "goog.events.BrowserEvent"
