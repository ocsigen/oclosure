(** 
   OClosure Project - 2010
   Class goog.ui.MenuItem
   
   Class representing an item in a menu.
   
   @author : Emmanuel CRESPIN
   @version 0.2
*)

open Control

open Js
class type menuItem = object
  inherit control

  (** Sets the menu item to be selectable or not.*)
  method setSelectable : bool t -> unit meth
 
  (*
     Returns the value associated with the menu item. The default implementation
     returns the model object associated with the item (if any), or its caption.
 
  method getValue : unit -> *
  
     Sets the value associated with the menu item.  The default implementation
     stores the value as the model of the menu item. 
  
  method setValue : * -> unit meth
  *)

 (** Sets the menu item to be checkable or not.*)
  method setCheckable : bool t -> unit meth
end

let menuItem : (ControlContent.controlContent -> menuItem t) constr = 
   Js.Unsafe.variable "goog.ui.MenuItem"
