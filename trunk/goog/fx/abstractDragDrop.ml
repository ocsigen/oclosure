(**
   * OClosure Project - 2010
   * Class goog.fx.AbstractDragDrop
   * 
   * Abstract class that provides reusable functionality for implementing drag 
   * and drop functionality. This class also allows clients to define their own
   * subtargeting function so that drop areas can have finer granularity then a
   * singe element. This is accomplished by using a client provided function to
   * map from element and coordinates to a subregion id. This class can also be
   * made aware of scrollable containers that contain drop targets by calling 
   * addScrollableContainer. This will cause dnd to take changing scroll 
   * positions into account while a drag is occuring. 
   * 
   * @author Cardoso Gabriel
   * @version 0.1
*)
open EventTarget

open Js
class type abstractDragDrop = object
  inherit eventTarget
end

let abstractDragDrop : abstractDragDrop t constr =
  Js.Unsafe.variable "goog.fx.AbstractDragDrop"
