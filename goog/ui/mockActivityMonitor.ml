(**
   OClosure Project - 2010
   Class goog.ui.MockActivityMonitor
   
   @author Cardoso Gabriel
   @version 0.2
*)
open Js

class type mockActivityMonitor = object
  inherit ActivityMonitor.activityMonitor

  method simulateEvent : Events.eventType t opt -> unit meth
end

let mockActivityMonitor : mockActivityMonitor t constr = 
  Js.Unsafe.variable "goog.ui.MockActivityMonitor"

