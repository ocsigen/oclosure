(**
   * OClosure Project - 2010
   * Class goog.ui.tree.BaseNode
   * 
   * An abstract bas class for a node in the three
   * 
   * @author Cardoso Gabriel
   * @version 0.1
*)
open Component

open Js
class type baseNode = object
  inherit component
  method add : baseNode -> baseNode meth
end

let baseNode : (js_string t -> baseNode t) constr =
  Js.Unsafe.variable "goog.ui.tree.BaseNode"
