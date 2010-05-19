
(** 
    * OClosure Project - 2010
    * Class goog.gears.LoggerServer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open EventType  (* goog.gears.Worker.EventType *)
open Level  (* goog.debug.Logger.Level *)
open Logger  (* goog.debug.Logger *)
open Disposable  (* goog.Disposable *)

class external loggerServer 
inherit disposable: worker -> number -> string(* opt? *) ->  <
getUseMessagePrefix : boolean;
setUseMessagePrefix : boolean -> unit;
disposeInternal : unit;
> = "goog.gears.LoggerServer"
