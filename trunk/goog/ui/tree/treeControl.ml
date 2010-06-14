(**
   * OClosure Project - 2010
   * Class goog.ui.tree.treeControl
   * 
   * This creates a TreeControl object. A tree control provides a way to view a
   * hierarchical set of data. 
   * 
   * @author Cardoso Gabriel
   * @version 0.1
*)
open BaseNode
open TreeNode

open Js
class type treeControl = object
  inherit baseNode
  method createNode : js_string t -> treeNode meth
end

let treeControl : (js_string t -> treeControl t) constr =
  Js.Unsafe.variable "goog.ui.tree.TreeControl"
