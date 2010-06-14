
(** 
    * OClosure Project - 2010
    * Class goog.ui.IdleTimer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ActivityMonitor  (* goog.ui.ActivityMonitor *)
open Set  (* goog.structs.Set *)
open EventTarget  (* goog.events.EventTarget *)
open Events  (* goog.events *)
open Timer  (* goog.Timer *)

class external idleTimer 
inherit eventTarget: number -> activityMonitor(* opt? *) ->  <
disposeInternal : unit;
getIdleThreshold : number;
getActivityMonitor : activityMonitor;
isIdle : boolean;
> = "goog.ui.IdleTimer"
