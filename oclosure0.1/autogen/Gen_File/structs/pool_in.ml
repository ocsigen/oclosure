
(** 
    * OClosure Project - 2010
    * Class goog.structs.Pool
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Set  (* goog.structs.Set *)
open Queue  (* goog.structs.Queue *)
open Disposable  (* goog.Disposable *)

class external pool 
inherit disposable: number(* opt? *) -> number(* opt? *) ->  <
setMinimumCount : number -> unit;
setMaximumCount : number -> unit;
getObject : object(* | undefined *);
releaseObject : object -> boolean;
addFreeObject : object -> unit;
adjustForMinMax : unit;
createObject : object;
disposeObject : object -> unit;
objectCanBeReused : object -> boolean;
contains : object -> boolean;
getCount : number;
getInUseCount : number;
getFreeCount : number;
isEmpty : boolean;
disposeInternal : unit;
> = "goog.structs.Pool"
