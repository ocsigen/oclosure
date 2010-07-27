(**
   OClosure Project - 2010
   Classes goog.fx.AbstractDragDrop, goog.fx.DragDropItem, goog.fx.DragDrop

   @author Cardoso Gabriel
   @version 0.2
*)

open Js

class type abstractDragDrop = object
  inherit Events.eventTarget

  method addItem : dragDropItem t -> unit meth

  method addScrollableContainer : #Dom_html.element t -> unit meth

  method addTarget : abstractDragDrop t -> unit meth

  method createDragElement : #Dom_html.element t -> Dom_html.element t meth

  method disposeInternal : unit meth

  method endDrag : DragEvent.dragEvent t -> unit meth

  method getDragElementPosition : #Dom_html.element t -> #Dom_html.element t 
    -> Events.browserEvent t -> Math.coordinate t meth

  method getDragger : Dragger.dragger t meth

  method init : unit meth

  method isInitialized : bool t meth

  method maybeStartDrag : Events.browserEvent t -> dragDropItem t 
      -> unit meth

  method recalculateDragTargets : unit meth

  method removeItems : unit meth

  method setDragClass : js_string t -> unit meth

  method setScrollTarget : #Dom_html.eventTarget t -> unit meth

  method setSourceClass : js_string t -> unit meth

  method setTargetClass : js_string t -> unit meth

  method startDrag : Events.browserEvent t -> dragDropItem t 
    -> unit meth
end

and dragDropItem = object
  inherit Events.eventTarget

  method getCurrentDragElement : #Dom_html.element t meth

  method getDraggableElement : #Dom_html.element t -> #Dom_html.element t meth

  method getDraggableElements : #Dom_html.element t js_array t meth

  method setParent : abstractDragDrop t -> unit meth
end

class type dragDrop = object
  inherit abstractDragDrop
end

let tmp = Tools.variable "[oclosure]goog.fx.DragDropItem[/oclosure]"
let dragDropItem : ((#Dom_html.element t, js_string t) Tools.Union.t 
		    -> dragDropItem t) constr = tmp

let abstractDragDrop : abstractDragDrop t constr =
  Tools.variable "[oclosure]goog.fx.AbstractDragDrop[/oclosure]"

let tmp = Tools.variable "[oclosure]goog.fx.DragDrop[/oclosure]"
let dragDrop : ((#Dom_html.element t, js_string t) Tools.Union.t 
		-> dragDrop t) constr = tmp
