
(** 
    * OClosure Project - 2010
    * Class goog.gears.WorkerEvent, goog.gears.Worker.EventType, goog.gears.Worker
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open EventTarget  (* goog.events.EventTarget *)
open Event  (* goog.events.Event *)

class external worker 
inherit eventTarget: workerPool -> number(* opt? *) ->  <
handleMessage : gearsMessageObject -> unit;
init : number -> unit;
sendCommand : number -> object -> unit;
sendMessage : (* any = "*" *) -> unit;
getId : number;
isCommandLike : (* any = "*" *) -> boolean;
disposeInternal : unit;
> = "goog.gears.Worker"

class external workerEvent 
inherit event: string -> gearsMessageObject ->  <
> = "goog.gears.WorkerEvent"
