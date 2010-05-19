
(** 
    * OClosure Project - 2010
    * Class goog.ds.JsPropertyDataSource, goog.ds.JsDataSource
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open LoadState  (* goog.ds.LoadState *)
open EmptyNodeList  (* goog.ds.EmptyNodeList *)
open DataManager  (* goog.ds.DataManager *)
open BasicNodeList  (* goog.ds.BasicNodeList *)
open BaseDataNode  (* goog.ds.BaseDataNode *)

class external jsDataSource 
inherit dataNode: object -> string -> object(* opt? *) ->  <
setRoot : object -> unit;
get : object;
set : object -> unit;
getChildNodes : string(* opt? *) -> dataNodeList;
getChildNode : string -> boolean(* opt? *) -> dataNode;
getChildNodeValue : string -> object;
setChildNode : string -> object -> object;
getDataName : string;
setDataName : string -> unit;
getDataPath : string;
load : unit;
getLoadState : loadState;
isList : boolean;
> = "goog.ds.JsDataSource"

class external jsPropertyDataSource 
inherit baseDataNode: dataNode -> string -> dataNode(* opt? *) ->  <
get : object;
set : object -> unit;
getDataName : string;
getParent_ : dataNode;
> = "goog.ds.JsPropertyDataSource"
