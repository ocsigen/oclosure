(**
   OClosure Project - 2010
   Class goog.ui.IdleTimer
   
   @author Cardoso Gabriel
   @version 0.2
*)
open Js

class type idleTimer = object
  inherit Events.eventTarget

  method disposeInternal : unit meth
    
  method getActivityMonitor : ActivityMonitor.activityMonitor t meth

  method getIdleThreshold : float t meth

  method isIdle : bool t meth
end

let idleTimer : float t -> ActivityMonitor.activityMonitor t opt 
  -> idleTimer t constr = 
  Js.Unsafe.variable "goog.ui.IdleTimer"

