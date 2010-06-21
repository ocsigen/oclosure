(**
   OClosure Project - 2010
   Class goog.ui.tree.treeControl
   
   This creates a TreeControl object. A tree control provides a way to view a
   hierarchical set of data. 
   
   @author Cardoso Gabriel
   @version 0.2
*)
open Js

open BaseNode
open TreeNode
open Goog_dom

type config

class type ['a] treeControl = object
  inherit ['a] baseNode
  method createNode : js_string t -> 'a treeNode t meth
end

let treeControl_ = Js.Unsafe.variable "goog.ui.tree.TreeControl"
let treeControl : (js_string t -> config opt -> domHelper t opt -> 'a treeControl t) constr = treeControl_
