
(** 
    * OClosure Project - 2010
    * Class goog.ui.MockActivityMonitor
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ActivityMonitor  (* goog.ui.ActivityMonitor *)
open EventType  (* goog.events.EventType *)

class external mockActivityMonitor 
inherit activityMonitor:  <
simulateEvent : eventType(* opt? *) -> unit;
> = "goog.ui.MockActivityMonitor"
