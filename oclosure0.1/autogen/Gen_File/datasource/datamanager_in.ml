
(** 
    * OClosure Project - 2010
    * Class goog.ds.DataManager
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Map  (* goog.structs.Map *)
open Structs  (* goog.structs *)
open String  (* goog.string *)
open Expr  (* goog.ds.Expr *)
open DataNode  (* goog.ds.DataNode *)
open BasicNodeList  (* goog.ds.BasicNodeList *)

class external dataManager 
inherit dataNode:  <
getInstance : dataManager;
clearInstance : unit;
addDataSource : dataNode -> boolean(* opt? *) -> string(* opt? *) -> unit;
aliasDataSource : string -> string -> unit;
getDataSource : string -> dataNode;
get : object;
set : object -> unit;
getChildNodes : string(* opt? *) -> dataNodeList;
getChildNode : string -> dataNode;
getChildNodeValue : string -> object;
getDataName : string;
getDataPath : string;
load : unit;
getLoadState : loadState;
isList : boolean;
getEventCount : number;
addListener : function -> string -> string(* opt? *) -> unit;
addIndexedListener : function -> string -> string(* opt? *) -> unit;
removeIndexedListeners : function -> string(* opt? *) -> string(* opt? *) -> unit;
removeListeners : function -> string(* opt? *) -> string(* opt? *) -> unit;
getListenerCount : number;
runWithoutFiringDataChanges : function -> unit;
fireDataChange : string -> unit;
> = "goog.ds.DataManager"
