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
  method add : 'a baseNode t -> 'a baseNode t opt -> 'a baseNode t meth
   
  method collapse : unit -> unit meth

  method collapseAll : unit -> unit meth

(** 
   Returns true if the node is a descendant of this node
   @param {Goog.Ui.Tree.BaseNode t} node The node to check.
   @return {bool t} True if the node is a descendant of this node, false
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

(**
   @return {Element} The element for the tree node.
*)
  method getElement : unit -> element t meth

(**
   @return {string} The src for the icon used for expanding the node.
*)
  method getExpandIconClass : unit -> js_string t meth

(**
   @return {Element} The expanded icon element.
 *)
  method getExpandIconElement : unit -> element t meth

(**
   @return {string} The source for the icon.
 *)
  method getExpandIconHtml : unit -> js_string t meth

(**
   @return {boolean} Whether the node is expanded.
 *)
  method getExpanded : unit -> bool t meth

(**
   Gets the icon class for when the node is expanded.
   @return {string} The class.
 *)
  method getExpandedIconClass : unit -> js_string t meth

(**
   @return {goog.ui.tree.BaseNode?} The first child of this node.
 *)
  method getFirstChild : unit -> 'a baseNode t opt meth

(**
   Returns the html of the label.
   @return {string} The html string of the label.
 *)
  method getHtml : unit -> js_string t meth

(**
   Gets the icon class for the node.
   @return {string} s The icon source.
 *)
  method getIconClass : unit -> js_string t meth

  method setClientData : 'a opt -> unit meth      
end

let baseNode_ = Js.Unsafe.variable "goog.ui.tree.BaseNode"
let baseNode : (js_string t -> config opt -> domHelper t opt -> 'a baseNode t) constr = baseNode_
