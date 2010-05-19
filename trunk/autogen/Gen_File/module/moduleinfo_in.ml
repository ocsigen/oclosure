
(** 
    * OClosure Project - 2010
    * Class goog.module.ModuleInfo.Callback, goog.module.ModuleInfo
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open BaseModule  (* goog.module.BaseModule *)
open Disposable  (* goog.Disposable *)

class external moduleInfo 
inherit disposable: (* Array[string] *) ->  <
getDependencies : (* Array[string] *);
setUris : (* Array[string] *) -> unit;
getUris : (* Array[string] *)(* opt? *);
setModuleConstructor : function -> unit;
registerEarlyCallback : function -> object(* opt? *) -> callback;
registerCallback : function -> object(* opt? *) -> callback;
registerErrback : function -> object(* opt? *) -> callback;
isLoaded : boolean;
getModule : baseModule(* opt? *);
onLoad : (* function *) -> unit;
onError : failureType -> unit;
disposeInternal : unit;
> = "goog.module.ModuleInfo"

class external callback : function -> object(* opt? *) ->  <
execute : (* any = "*" *) -> unit;
abort : unit;
> = "goog.module.ModuleInfo.Callback"
