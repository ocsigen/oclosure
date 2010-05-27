(** OClosure Project - 2010
 * Class goog.ui.MenuItem
 * 
 * Class representing an item in a menu.
 * 
 * @author : Emmanuel CRESPIN
 * @version 0.1
 * @see 'goog.ui.Control'
 *)

open Control

class external menuItem inherit control : string ->
< 
  (** Sets the menu item to be selectable or not.*)
  setSelectable : bool -> unit;
 
  (** Returns the value associated with the menu item.  The default implementation returns the model object associated with the item (if any), or its caption.
  * getValue : unit -> *
  
  * Sets the value associated with the menu item.  The default implementation
     stores the value as the model of the menu item.
  *setValue : * -> unit;*)

 (** Sets the menu item to be checkable or not.*)
  setCheckable : bool -> unit;
> = "goog.ui.MenuItem"
