
(** 
    * OClosure Project - 2010
    * Class goog.Throttle
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Timer  (* goog.Timer *)
open Disposable  (* goog.Disposable *)

class external throttle 
inherit disposable: function -> number -> object(* opt? *) ->  <
fire : unit;
stop : unit;
pause : unit;
resume : unit;
disposeInternal : unit;
> = "goog.Throttle"
