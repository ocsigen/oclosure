
(** 
    * OClosure Project - 2010
    * Class goog.Timer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open EventTarget  (* goog.events.EventTarget *)

class external timer 
inherit eventTarget: number(* opt? *) -> object(* opt? *) ->  <
getInterval : number;
setInterval : number -> unit;
dispatchTick : unit;
start : unit;
stop : unit;
disposeInternal : unit;
callOnce : function -> number(* opt? *) -> object(* opt? *) -> number;
clear : number(* opt? *) -> unit;
> = "goog.Timer"
