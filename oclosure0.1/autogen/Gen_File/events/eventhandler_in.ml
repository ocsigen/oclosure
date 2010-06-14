
(** 
    * OClosure Project - 2010
    * Class goog.events.EventHandler
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open SimplePool  (* goog.structs.SimplePool *)
open Object  (* goog.object *)
open EventWrapper  (* goog.events.EventWrapper *)
open Events  (* goog.events *)
open Disposable  (* goog.Disposable *)

class external eventHandler 
inherit disposable: object(* opt? *) ->  <
listen : eventTarget(* | eventTarget *) -> string(* | (* Array[string] *) *) -> function(* | object(* opt? *) *) -> boolean(* opt? *) -> object(* opt? *) -> eventHandler;
listenOnce : eventTarget(* | eventTarget *) -> string(* | (* Array[string] *) *) -> function(* | object(* opt? *) *) -> boolean(* opt? *) -> object(* opt? *) -> eventHandler;
listenWithWrapper : eventTarget(* | eventTarget *) -> eventWrapper -> function(* | object *) -> boolean(* opt? *) -> object(* opt? *) -> eventHandler;
unlisten : eventTarget(* | eventTarget *) -> string(* | (* Array[string] *) *) -> function(* | object(* opt? *) *) -> boolean(* opt? *) -> object(* opt? *) -> eventHandler;
unlistenWithWrapper : eventTarget(* | eventTarget *) -> eventWrapper -> function(* | object *) -> boolean(* opt? *) -> object(* opt? *) -> eventHandler;
removeAll : unit;
disposeInternal : unit;
handleEvent : event -> unit;
> = "goog.events.EventHandler"
