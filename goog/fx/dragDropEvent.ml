(**
   OClosure Project - 2010
   Class goog.fx.DragDropEvent
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type dragDropEvent = object
  inherit Events.event 

  method disposeInternal : unit meth
end

let tmp = Js.Unsafe.variable "goog.fx.DragDropEvent"
let dragDropEvent : (js_string t -> #DragDrop.abstractDragDrop t -> 
  DragDrop.dragDropItem t -> #DragDrop.abstractDragDrop t opt -> 
  DragDrop.dragDropItem t opt -> #Dom_html.element t opt -> int opt -> 
  int opt -> int opt -> int opt -> dragDropEvent t) constr = tmp
