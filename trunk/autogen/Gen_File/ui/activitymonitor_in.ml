
(** 
    * OClosure Project - 2010
    * Class goog.ui.ActivityMonitor
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open EventTarget  (* goog.events.EventTarget *)
open EventHandler  (* goog.events.EventHandler *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)

class external activityMonitor 
inherit eventTarget: domHelper(* | (* Array[domHelper] *)(* opt? *) *) ->  <
disposeInternal : unit;
resetTimer : unit;
getIdleTime : number(* opt? *) -> number;
getLastEventType : string;
getLastEventTime : number;
> = "goog.ui.ActivityMonitor"
