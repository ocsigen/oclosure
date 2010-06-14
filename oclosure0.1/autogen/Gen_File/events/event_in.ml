
(** 
    * OClosure Project - 2010
    * Class goog.events.Event
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Disposable  (* goog.Disposable *)

class external event 
inherit disposable: string -> object(* opt? *) ->  <
disposeInternal : unit;
stopPropagation : unit;
preventDefault : unit;
stopPropagation : event(* opt? *) -> unit;
preventDefault : event(* opt? *) -> unit;
> = "goog.events.Event"
