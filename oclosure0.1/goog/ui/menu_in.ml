(** OClosure Project - 2010
 * Class goog.ui.Menu
 * 
 * A basic menu class.
 * @param {goog.dom.DomHelper=} opt_domHelper Optional DOM helper.
 * @param {goog.ui.MenuRenderer=} opt_renderer Renderer used to render or
 *     decorate the container; defaults to {@link goog.ui.MenuRenderer}.
 *
 * @author : Emmanuel CRESPIN
 * @version 0.1
 * @see 'goog.ui.Component'
 * @see 'goog.ui.MenuItem'
 * @see 'goog.math.Coordinate'
 *)

open Component
open MenuItem
open Coordinate
type element = JSOO.obj

class external menu inherit component: unit ->
< (** Returns the CSS class applied to menu elements.*)
  getCssClass : unit -> string;

  (** Returns whether the provided element is to be considered inside the menu for
   * purposes such as dismissing the menu on an event.*)
  containsElement : element -> bool;
  
  (** Adds a new menu item at the end of the menu.*)
  addItem : menuItem (* | goog.ui.MenuSeparator *)-> unit;
  
  (** Adds a new menu item at a specific index in the menu.*)
  addItemAt : menuItem (* | goog.ui.MenuSeparator *) -> float -> unit;
  
  (** Removes an item from the menu and disposes of it.*)
  removeItem : menuItem (* | goog.ui.MenuSeparator *) -> unit;
  
  (** Removes a menu item at a given index in the menu and disposes of it.*)
  removeItemAt : float -> unit;
  
  (** Returns a reference to the menu item at a given index.*)
  getItemAt : float -> menuItem;
  
  (** Returns the number of items in the menu (including separators).*)
  getItemCount : unit -> float;
  
  (** Returns the menu items contained in the menu.*)
  getItems : unit -> menuItem array;
  
  (** Sets the position of the menu relative to the view port.*)
  setPosition : float -> (* float ->*) unit;
  
  (** Gets the page offset of the menu, or null if the menu isn't visible*)
  getPosition : unit -> coordinate;
  
  (** Sets whether the menu can automatically move focus to its key event target
     when it is set to visible.*)
  setAllowAutoFocus : bool -> unit;
  
  (** Return whether the menu can automatically move focus to its key
     event target when it is set to visible.*)
  getAllowAutoFocus : unit -> bool;
  
  (** Sets whether the menu will highlight disabled menu items or skip to the next
     active item.*)
  setAllowHighlightDisabled : bool -> unit;
  
  (** Return whether the menu will highlight disabled menu items or skip
     to the next active item.*)
  getAllowHighlightDisabled : unit -> bool;
  
  (** Highlights the next item that begins with the specified string.  If no
     (other) item begins with the given string, the selection is unchanged.*)
  highlightNextPrefix : string -> bool;

> = "goog.ui.Menu"

