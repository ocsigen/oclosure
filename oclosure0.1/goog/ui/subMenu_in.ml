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
type element = JSOO.obj

class external subMenu inherit menuItem : string ->
<
  (** @inheritDoc *)
  enterDocument : unit -> unit;

  (** @inheritDoc *)
  exitDocument : unit -> unit;

  (** @inheritDoc *)
  disposeInternal : unit -> unit;

  (** Dismisses the submenu on a delay, with the result that the user needs less
   * accuracy when moving to submenus.  Alternate implementations could use
   * geometry instead of a timer.*)
  setHighlighted : bool -> unit;

  (** Show the submenu and ensure that all siblings are hidden.*)
  showSubMenu : unit -> unit;

  (** Dismisses the menu and all further submenus.*)
  dismissSubMenu : unit -> unit;

  (** Clears the show and hide timers for the sub menu.*)
  clearTimers : unit -> unit;

  (** Sets the menu item to be visible or invisible.*)
  setVisible : bool -> bool;

  (**Handles a key event that is passed to the menu item from its parent because
   * it is highlighted.  If the right key is pressed the sub menu takes control
   * and delegates further key events to its menu until it is dismissed OR the
   * left key is pressed.*)
  handleKeyEvent : event (*KeyEvent*) -> bool;

  (** Sets a timer to show the submenu and then dispatches an ENTER event to the
   * parent menu.*)
  handleMouseOver : event (*BrowserEvent*) -> unit;

  (** Overrides the default mouseup event handler, so that the ACTION isn't
   * dispatched for the submenu itself, instead the submenu is shown instantly.*)
  performActionInternal : event (*BrowserEvent*) -> bool;

  (** Sets whether the submenu is aligned at the end of the parent menu.*)
  setAlignToEnd : bool -> unit;

  (** Determines whether the submenu is aligned at the end of the parent menu.*)
  isAlignedToEnd : unit -> bool;

  (** Adds a new menu item at the end of the menu.*)
  addItem : menuItem -> unit;

  (** Adds a new menu item at a specific index in the menu.*)
  addItemAt : menuItem -> float -> unit;

  (** Removes an item from the menu and disposes it.*)
  removeItem : menuItem -> unit;

  (** Removes a menu item at a given index in the menu and disposes it.*)
  removeItemAt: float -> unit; 

  (** Returns a reference to the menu item at a given index.*)
  getItemAt : float -> component;

  (** Returns the number of items in the sub menu (including separators).*)
  getItemCount : unit -> float;

  (** Returns the menu items contained in the sub menu.*)
  getItems : unit -> menuItem array;

  (** Gets a reference to the submenu's actual menu.*)
  getMenu : unit -> menu;

  (** Sets the submenu to a specific menu.*)
  setMenu : menu -> unit;
  
  (** Returns true if the provided element is to be considered inside the menu for
   * purposes such as dismissing the menu on an event.  This is so submenus can
   * make use of elements outside their own DOM.*)
  containsElement : element -> bool; 

  (** @param {boolean} isAdjustable Whether this submenu is adjustable.*)
  setPositionAdjustable : bool -> unit;

  (** @return {boolean} Whether this submenu is adjustable.*)
  isPositionAdjustable : unit -> bool;
> = "goog.uiSubMenu"
