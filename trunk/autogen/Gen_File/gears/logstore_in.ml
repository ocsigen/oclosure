
(** 
    * OClosure Project - 2010
    * Class goog.gears.LogStore.Query, goog.gears.LogStore
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Json  (* goog.json *)
open SchemaType  (* goog.gears.BaseStore.SchemaType *)
open BaseStore  (* goog.gears.BaseStore *)
open Level  (* goog.debug.Logger.Level *)
open Logger  (* goog.debug.Logger *)
open LogRecord  (* goog.debug.LogRecord *)
open LogManager  (* goog.debug.LogManager *)
open Delay  (* goog.async.Delay *)

class external logStore 
inherit baseStore: database -> string(* opt? *) ->  <
version : unit;
dEFAULT_PRUNE_KEEPER_COUNT_ : unit;
dEFAULT_AUTOPRUNE_INTERVAL_MILLIS_ : unit;
dEFAULT_TABLE_NAME_ : unit;
mAX_BUFFER_BYTES_ : unit;
flush : unit;
createAutoPruneDelay : number(* opt? *) -> number(* opt? *) -> unit;
startAutoPrune : unit;
stopAutoPrune : unit;
isAutoPruneActive : boolean;
pruneBeforeCount : number(* opt? *) -> unit;
pruneBeforeSequenceNumber : number -> unit;
isCapturing : boolean;
setCapturing : boolean -> unit;
addLogRecord : logRecord -> unit;
select : query -> (* Array[logRecord] *);
disposeInternal : unit;
> = "goog.gears.LogStore"

class external query :  <
> = "goog.gears.LogStore.Query"
