
(** 
    * OClosure Project - 2010
    * Class goog.ds.JsonDataSource
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Logger  (* goog.ds.logger *)
open LoadState  (* goog.ds.LoadState *)
open JsDataSource  (* goog.ds.JsDataSource *)
open DataManager  (* goog.ds.DataManager *)
open Dom  (* goog.dom *)
open Uri  (* goog.Uri *)

class external jsonDataSource 
inherit jsDataSource: string(* | uri *) -> string -> string(* opt? *) ->  <
load : unit;
getLoadState : loadState;
receiveData : object -> unit;
> = "goog.ds.JsonDataSource"
