(**
   OClosure Project - 2010
   Class goog.ui.ActivityMonitor
   
   @author Cardoso Gabriel
   @version 0.2
*)
open Js

class type activityMonitor = object
  inherit Events.eventTarget

  method disposeInternal : unit meth

  method getIdleTime : float opt -> float t meth

  method getLastEventTime : float t meth

  method getLastEventType : js_string t meth

  method resetTimer : unit meth
end

let activityMonitor : 
    (Gdom.domHelper t, Gdom.domHelper t js_array t) Tools.Union.t 
    -> activityMonitor t constr = 
  Tools.variable "[oclosure]goog.ui.ActivityMonitor[/oclosure]"

