
(** 
    * OClosure Project - 2010
    * Class goog.events.EventTarget
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Events  (* goog.events *)
open Disposable  (* goog.Disposable *)

class external eventTarget 
inherit disposable:  <
getParentEventTarget : eventTarget;
setParentEventTarget : eventTarget(* opt? *) -> unit;
addEventListener : string -> function(* | object *) -> boolean(* opt? *) -> object(* opt? *) -> unit;
removeEventListener : string -> function(* | object *) -> boolean(* opt? *) -> object(* opt? *) -> unit;
dispatchEvent : string(* | object| event *) -> boolean;
disposeInternal : unit;
> = "goog.events.EventTarget"
