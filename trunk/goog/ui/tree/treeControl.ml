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
(**
   Creates a new tree node using the same config as the root.
   @param {string} html The html content of the node label.
   @return {goog.ui.tree.TreeNode} The new item.
*)
  method createNode : js_string t -> 'a treeNode t meth

(**
   Returns the tree.
   @return {goog.ui.tree.TreeControl} The tree.
*)      
  method getTree : unit -> 'a treeControl t meth
end

let treeControl_ = Js.Unsafe.variable "goog.ui.tree.TreeControl"
let treeControl : (js_string t -> config opt -> domHelper t opt -> 'a treeControl t) constr = treeControl_
