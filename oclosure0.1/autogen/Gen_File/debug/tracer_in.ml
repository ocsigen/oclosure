
(** 
    * OClosure Project - 2010
    * Class goog.debug.Trace
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open SimplePool  (* goog.structs.SimplePool *)
open Map  (* goog.structs.Map *)
open Iter  (* goog.iter *)
open Logger  (* goog.debug.Logger *)
open Array  (* goog.array *)

class external trace_ :  <
> = "goog.debug.Trace_"

class external stat_ :  <
toString : string;
> = "goog.debug.Trace_.Stat_"

class external event_ :  <
toTraceString : number -> number -> string -> string;
toString : string;
setStartTime : number -> unit;
initCurrentTrace : number -> unit;
clearCurrentTrace : unit;
reset : number -> unit;
startTracer : string -> string(* opt? *) -> number;
stopTracer : number(* | undefined| null *) -> number(* opt? *) -> number(* opt? *);
setGcTracer : object -> unit;
getTotalVarAlloc : number;
addComment : string -> string(* opt? *) -> number(* opt? *) -> unit;
getFormattedTrace : string;
toString : string;
now : number;
> = "goog.debug.Trace_.Event_"
