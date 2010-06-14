
(** 
    * OClosure Project - 2010
    * Class goog.net.BulkLoader
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open XhrIo  (* goog.net.XhrIo *)
open EventType  (* goog.net.EventType *)
open BulkLoaderHelper  (* goog.net.BulkLoaderHelper *)
open EventTarget  (* goog.events.EventTarget *)
open EventHandler  (* goog.events.EventHandler *)
open Event  (* goog.events.Event *)
open Logger  (* goog.debug.Logger *)

class external bulkLoader 
inherit eventTarget: (* Array[string(* | uri *)] *) ->  <
getResponseTexts : (* Array[string] *);
load : unit;
disposeInternal : unit;
> = "goog.net.BulkLoader"
