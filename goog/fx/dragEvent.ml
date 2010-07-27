(**
   OClosure Project - 2010
   Class goog.fx.DragEvent
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type dragEvent = object
  inherit Events.event
end

let dragEvent : (js_string t -> Dragger.dragger t -> int -> int -> 
  Events.browserEvent t -> int opt -> int opt -> bool t opt 
    -> dragEvent t) constr = 
  Tools.variable "[oclosure]goog.fx.DragEvent[/oclosure]"
