(**
   OClosure Project - 2010
   Class goog.fx.DragListGroup
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

type dragListDirection = DOWN | UP | RIGHT | LEFT

class type dragListGroup = object
  inherit Events.eventTarget

  method addDragList : #Dom_html.element t -> dragListDirection -> bool t opt 
    -> js_string t opt -> unit meth

  method disposeInternal : unit meth

  method init : unit meth

  method setCurrDragItemClass : js_string t -> unit meth

  method setDragItemHandleHoverClass : js_string t -> unit meth

  method setDragItemHoverClass : js_string t -> unit meth

  method setDraggerElClass : js_string t -> unit meth

  method setFunctionToGetHandlerForDragItem : 
      (#Dom_html.element t -> #Dom_html.element t) callback -> unit meth
end

let dragListGroup : (dragListGroup t) constr = 
  Tools.variable "[oclosure]goog.fx.DragListGroup[/oclosure]"
