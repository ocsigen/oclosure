
(** 
    * OClosure Project - 2010
    * Class goog.ui.ZippyEvent, goog.ui.Zippy
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Style  (* goog.style *)
open KeyCodes  (* goog.events.KeyCodes *)
open EventType  (* goog.events.EventType *)
open EventTarget  (* goog.events.EventTarget *)
open Event  (* goog.events.Event *)
open Events  (* goog.events *)
open Classes  (* goog.dom.classes *)
open Dom  (* goog.dom *)

class external zippy 
inherit eventTarget: element(* | string| null *) -> element(* | string| (* function *) *) -> boolean(* opt? *) -> element(* | string(* opt? *) *) ->  <
disposeInternal : unit;
expand : unit;
collapse : unit;
toggle : unit;
setExpanded : boolean -> unit;
isExpanded : boolean;
> = "goog.ui.Zippy"

class external zippyEvent 
inherit event: string -> zippy -> boolean ->  <
> = "goog.ui.ZippyEvent"
