(**
   * OClosure Project - 2010
   * Class goog.fx.DragDrop
   * 
   * Drag/drop implementation for creating drag sources/drop targets consisting
   * of a single HTML Element. 
   * 
   * @author Cardoso Gabriel
   * @version 0.1
*)
open AbstractDragDrop

open Js
class type dragDrop = object
  inherit abstractDragDrop
  
end

let dragDrop : (Dom.element -> js_string t) constr = 
  Js.Unsafe.variable "goog.fx.DragDrop"
