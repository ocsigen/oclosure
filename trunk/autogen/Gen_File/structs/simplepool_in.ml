
(** 
    * OClosure Project - 2010
    * Class goog.structs.SimplePool
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Disposable  (* goog.Disposable *)

class external simplePool 
inherit disposable: number -> number ->  <
setCreateObjectFn : function -> unit;
setDisposeObjectFn : function -> unit;
getObject : object;
releaseObject : object -> unit;
createObject : object;
disposeObject : object -> unit;
disposeInternal : unit;
> = "goog.structs.SimplePool"
