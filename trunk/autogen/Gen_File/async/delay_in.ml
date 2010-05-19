
(** 
    * OClosure Project - 2010
    * Class goog.async.Delay, goog.Delay
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Timer  (* goog.Timer *)
open Disposable  (* goog.Disposable *)

class external delay 
inherit disposable: function -> number(* opt? *) -> object(* opt? *) ->  <
> = "goog.async.Delay"

class external delay :  <
disposeInternal : unit;
start : number(* opt? *) -> unit;
stop : unit;
fire : unit;
fireIfActive : unit;
isActive : boolean;
> = "goog.Delay"
