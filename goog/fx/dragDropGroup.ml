(**
   OClosure Project - 2010
   Class goog.fx.DragDropGroup
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type dragDropGroup = object
  inherit DragDrop.abstractDragDrop

  method addDragDropItem : #DragDrop.dragDropItem t -> unit meth

  method addItem_ : (#Dom_html.element t, js_string t) Tools.Union.t 
    -> unit meth
end

let dragDropGroup : (dragDropGroup t) constr = 
  Tools.variable "[oclosure]goog.fx.DragDropGroup[/oclosure]"
