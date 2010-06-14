
(** 
    * OClosure Project - 2010
    * Class goog.net.XhrIoPool
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open PriorityPool  (* goog.structs.PriorityPool *)
open Structs  (* goog.structs *)
open XhrIo  (* goog.net.XhrIo *)

class external xhrIoPool 
inherit priorityPool: map(* opt? *) -> number(* opt? *) -> number(* opt? *) ->  <
createObject : xhrIo;
disposeObject : xhrIo -> unit;
objectCanBeReused : xhrIo -> boolean;
> = "goog.net.XhrIoPool"
