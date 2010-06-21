(**
   OClosure Project - 2010
   Class goog.ui.tree.treeControl
   
   A single node in the tree
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

open BaseNode
open Goog_dom

class type ['a] treeNode = object
  inherit ['a] baseNode
(**
   Returns the source for the icon.
   @return {string} Src for the icon.
*)
  method getCalculatedIconClass : unit -> js_string t meth
  
(**
   Returns the tree
   @return {goog.ui.tree.TreeControl?} The tree.
*)
  method getTree : unit -> 'a baseNode t opt meth
end

let treeNode_ = Js.Unsafe.variable "goog.ui.tree.TreeNode"
let treeNode : (js_string t -> config opt -> domHelper t opt -> 'a treeNode t) constr = treeNode_
