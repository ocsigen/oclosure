(**
   * OClosure Project - 2010
   * Class goog.ui.Container
   * 
   * Base class for containers. Extends goog.ui.Component by adding the 
   * following:
   *  - a goog.events.KeyHandler, to simplify keyboard handling,
   *  - a pluggable renderer framework, to simplify the creation of containers 
   *    without the need to subclass this class,
   *  - methods to manage child controls hosted in the container,
   *  - default mouse and keyboard event handling methods. 
   * 
   * @author Cardoso Gabriel
   * @version 0.1
*)
open Component
open Control

open Js
class type container = object
  inherit component
  (** Adds the specified control as the last child of this container. 
     * See goog.ui.Container#addChildAt for detailed semantics. 
  *)
  method addChild_: control t -> bool t -> unit meth
end

let container : container t constr =
  Js.Unsafe.variable "goog.ui.Container"

module Container = struct
  type orientation = 
    | HORIZONTAL
    | VERTICAL
	
  type orientation_pre = js_string t

  let orientation_pre_of_orientation = function
    | VERTICAL -> Js.string "vertical"
    | HORIZONTAL -> Js.string "horizontal"

  let orientation_of_orientation_pre = function
    | "vertical" -> VERTICAL
    | "horizontal" -> HORIZONTAL
end
type orientation = Container.orientation
