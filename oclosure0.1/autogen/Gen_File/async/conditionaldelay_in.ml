
(** 
    * OClosure Project - 2010
    * Class goog.async.ConditionalDelay
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Delay  (* goog.async.Delay *)
open Disposable  (* goog.Disposable *)

class external conditionalDelay 
inherit disposable: (* function *) -> object(* opt? *) ->  <
disposeInternal : unit;
start : number(* opt? *) -> number(* opt? *) -> unit;
stop : unit;
isActive : boolean;
isDone : boolean;
onSuccess : unit;
onFailure : unit;
> = "goog.async.ConditionalDelay"
