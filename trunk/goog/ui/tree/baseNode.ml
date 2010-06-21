(**
   OClosure Project - 2010
   Class goog.ui.tree.BaseNode
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

open Goog_dom
open Component

type element = Dom_html.element
type config

class type ['a] baseNode = object
  inherit component
  
(**
   Adds a node as a child to the current node
   @param {goog.ui.tree.BaseNode} child The child to add.
   @param {goog.ui.tree.BaseNode=} opt_before If specified, the new child is
   added as a child before this one. If not specified, it's appended to the
   end.
   @return {goog.ui.tree.BaseNode} The added child.
*)
  method add : 'a baseNode t -> 'a baseNode t -> 'a baseNode t meth
   
  method collapse : unit -> unit meth

  method collapseAll : unit -> unit meth

(** 
   Returns true if the node is a descendant of this node
   @param {goog.ui.tree.BaseNode} node The node to check.
   @return {boolean} True if the node is a descendant of this node, false
   otherwise.
*)
  method contains : 'a baseNode t -> bool t meth

(**
   Creates the element.
   @return {Element} The element.
*)
  method createDom : unit -> element t meth

  method deselect : unit -> unit meth

  method disposeInternal : unit -> unit meth

  method enterDocument : unit -> unit meth

  method expand : unit -> unit meth

  method expandAll : unit -> unit meth

  method expandChildren : unit -> unit meth

(**
   @return {Element} The element after the label.
*)
  method getAfterLabelElement : unit -> element t meth

(**
   Returns the html that appears after the label. This is useful if you want to
   put extra UI on the row of the label but not inside the anchor tag.
   @return {string} The html.
*)
  method getAfterLabelHtml : unit -> js_string t meth

(** Abstract method... *)
(*  method getCalculatedIconClass : unit -> unit*)

(**
   Returns the children of this node. The caller must not modify the returned
   collection.
   @return {Array.<goog.ui.tree.BaseNode>} The children.
*)
  method getChildren : unit -> 'a baseNode t js_array t meth

(**
   @return {Element} The div containing the children.
*)
  method getChildrenElement : unit -> element t meth

(**
   @return {Object} Data set by the client.
*)
  method getClientData : unit -> 'a opt meth

(**
   @return {Object} The configuration for the tree.
*)
  method getConfig : unit -> config meth

(**
   Returns the depth of the node in the tree.
   Should no longer be overridden; override computeDepth instead.
   @return {number} The non-negative depth of this node (the root is zero).
*)
  method getDepth : unit -> number t meth


  method setClientData : 'a opt -> unit meth      
end

let baseNode_ = Js.Unsafe.variable "goog.ui.tree.BaseNode"
let baseNode : (js_string t -> config opt -> domHelper t opt -> 'a baseNode t) constr = baseNode_
