
(** 
    * OClosure Project - 2010
    * Class goog.gears.WorkerPool.EventType, goog.gears.WorkerPool.Event, goog.gears.WorkerPool
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Worker  (* goog.gears.Worker *)
open Gears  (* goog.gears *)
open EventTarget  (* goog.events.EventTarget *)
open Event  (* goog.events.Event *)

class external workerPool 
inherit eventTarget:  <
getGearsWorkerPool : gearsWorkerPool;
setErrorHandler : (* function *) -> object(* opt? *) -> unit;
createWorker : string -> worker;
createWorkerFromUrl : string -> worker;
allowCrossOrigin : unit;
sendMessage : (* any = "*" *) -> worker -> unit;
registerWorker : worker -> unit;
unregisterWorker : worker -> unit;
disposeInternal : unit;
> = "goog.gears.WorkerPool"

class external event 
inherit event: string -> number -> gearsMessageObject ->  <
> = "goog.gears.WorkerPool.Event"
