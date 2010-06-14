(** Oclosure Project - 2010
 * Class goog.ui.SubMenu
 *
 * Class representing a submenu that can be added as an item to other menus.
 *
 * @author : Emmanuel CRESPIN
 * @version 0.1
 * @see 'goog.ui.MenuItem' 
 *)
open Menu
open MenuItem
open Component
open Event
type element = Dom.element

open Js
class type subMenu = object
  inherit menuItem
  (** @inheritDoc *)
  method enterDocument : unit -> unit meth

  (** @inheritDoc *)
  method exitDocument : unit -> unit meth

  (** @inheritDoc *)
  method disposeInternal : unit -> unit meth

  (** Dismisses the submenu on a delay, with the result that the user needs less
   * accuracy when moving to submenus.  Alternate implementations could use
   * geometry instead of a timer.*)
  method setHighlighted : bool -> unit meth

  (** Show the submenu and ensure that all siblings are hidden.*)
  method showSubMenu : unit -> unit meth

  (** Dismisses the menu and all further submenus.*)
  method dismissSubMenu : unit -> unit meth

  (** Clears the show and hide timers for the sub menu.*)
  method clearTimers : unit -> unit meth

  (** Sets the menu item to be visible or invisible.*)
  method setVisible : bool -> bool meth

  (**Handles a key event that is passed to the menu item from its parent because
   * it is highlighted.  If the right key is pressed the sub menu takes control
   * and delegates further key events to its menu until it is dismissed OR the
   * left key is pressed.*)
  method handleKeyEvent : event (*KeyEvent*) -> bool meth

  (** Sets a timer to show the submenu and then dispatches an ENTER event to the
   * parent menu.*)
  method handleMouseOver : event (*BrowserEvent*) -> unit meth

  (** Overrides the default mouseup event handler, so that the ACTION isn't
   * dispatched for the submenu itself, instead the submenu is shown instantly.*)
  method performActionInternal : event (*BrowserEvent*) -> bool meth

  (** Sets whether the submenu is aligned at the end of the parent menu.*)
  method setAlignToEnd : bool -> unit meth

  (** Determines whether the submenu is aligned at the end of the parent menu.*)
  method isAlignedToEnd : unit -> bool meth

  (** Adds a new menu item at the end of the menu.*)
  method addItem : menuItem -> unit meth

  (** Adds a new menu item at a specific index in the menu.*)
  method addItemAt : menuItem -> float -> unit meth

  (** Removes an item from the menu and disposes it.*)
  method removeItem : menuItem -> unit meth

  (** Removes a menu item at a given index in the menu and disposes it.*)
  method removeItemAt: float -> unit meth

  (** Returns a reference to the menu item at a given index.*)
  method getItemAt : float -> component meth

  (** Returns the number of items in the sub menu (including separators).*)
  method getItemCount : unit -> float meth

  (** Returns the menu items contained in the sub menu.*)
  method getItems : unit -> menuItem array meth

  (** Gets a reference to the submenu's actual menu.*)
  method getMenu : unit -> menu meth

  (** Sets the submenu to a specific menu.*)
  method setMenu : menu -> unit meth
  
  (** Returns true if the provided element is to be considered inside the menu for
   * purposes such as dismissing the menu on an event.  This is so submenus can
   * make use of elements outside their own DOM.*)
  method containsElement : element -> bool meth

  (** @param {boolean} isAdjustable Whether this submenu is adjustable.*)
  method setPositionAdjustable : bool -> unit meth

  (** @return {boolean} Whether this submenu is adjustable.*)
  method isPositionAdjustable : unit -> bool meth
end

let subMenu : (js_string t -> subMenu t) constr =
  Js.Unsafe.variable "goog.uiSubMenu"