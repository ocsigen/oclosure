
(** 
    * OClosure Project - 2010
    * Class goog.gears.FakeWorkerPool
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open XmlHttp  (* goog.net.XmlHttp *)
open WorkerPool  (* goog.gears.WorkerPool *)
open Gears  (* goog.gears *)
open Uri  (* goog.Uri *)

class external fakeWorkerPool_ :  <
createWorkerFromUrl : string -> number;
createWorker : string -> number;
allowCrossOrigin : unit;
sendMessage : string -> number -> unit;
onmessage : string -> number -> object(* opt? *) -> unit;
> = "goog.gears.FakeWorkerPool_"

class external fakeWorkerPool 
inherit workerPool:  <
getGearsWorkerPool : object;
> = "goog.gears.FakeWorkerPool"
