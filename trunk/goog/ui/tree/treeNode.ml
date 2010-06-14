(**
   * OClosure Project - 2010
   * Class goog.ui.tree.treeControl
   * 
   * A single node in the tree
   * 
   * @author Cardoso Gabriel
   * @version 0.1
*)
open BaseNode

open Js
class type treeNode = object
  inherit baseNode
end

let treeNode : (js_string t -> treeNode t) constr =
  Js.Unsafe.variable "goog.ui.tree.TreeNode"
