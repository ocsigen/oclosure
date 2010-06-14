
(** 
    * OClosure Project - 2010
    * Class goog.structs.PriorityPool
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open PriorityQueue  (* goog.structs.PriorityQueue *)
open Pool  (* goog.structs.Pool *)

class external priorityPool 
inherit pool: number(* opt? *) -> number(* opt? *) ->  <
getObject : function(* opt? *) -> (* any = "*" *)(* opt? *) -> object(* | undefined *);
addFreeObject : object -> unit;
adjustForMinMax : unit;
disposeInternal : unit;
> = "goog.structs.PriorityPool"
