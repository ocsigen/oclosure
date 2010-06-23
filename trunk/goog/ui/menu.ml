(** OClosure Project - 2010
 * Class goog.ui.Menu
 * 
 * A basic menu class.
 * @param {goog.dom.DomHelper=} opt_domHelper Optional DOM helper.
 * @param {goog.ui.MenuRenderer=} opt_renderer Renderer used to render or
  method *     decorate the container meth
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
type element = Dom.element

open Js
class type menu = object
  inherit component
  method getCssClass : js_string t meth

  (** Returns whether the provided element is to be considered inside the menu for
   * purposes such as dismissing the menu on an event.*)
  method containsElement : element -> bool meth
  
  (** Adds a new menu item at the end of the menu.*)
  method addItem : menuItem (* | goog.ui.MenuSeparator *)-> unit meth
  
  (** Adds a new menu item at a specific index in the menu.*)
  method addItemAt : menuItem (* | goog.ui.MenuSeparator *) -> float -> unit meth
  
  (** Removes an item from the menu and disposes of it.*)
  method removeItem : menuItem (* | goog.ui.MenuSeparator *) -> unit meth
  
  (** Removes a menu item at a given index in the menu and disposes of it.*)
  method removeItemAt : float -> unit meth
  
  (** Returns a reference to the menu item at a given index.*)
  method getItemAt : float -> menuItem meth
  
  (** Returns the number of items in the menu (including separators).*)
  method getItemCount : float meth
  
  (** Returns the menu items contained in the menu.*)
  method getItems : menuItem array meth
  
  (** Sets the position of the menu relative to the view port.*)
  method setPosition : float -> (* float ->*) unit meth
  
  (** Gets the page offset of the menu, or null if the menu isn't visible*)
  method getPosition : coordinate meth
  
  (** Sets whether the menu can automatically move focus to its key event target
     when it is set to visible.*)
  method setAllowAutoFocus : bool -> unit meth
  
  (** Return whether the menu can automatically move focus to its key
     event target when it is set to visible.*)
  method getAllowAutoFocus : bool meth
  
  (** Sets whether the menu will highlight disabled menu items or skip to the next
     active item.*)
  method setAllowHighlightDisabled : bool -> unit meth
  
  (** Return whether the menu will highlight disabled menu items or skip
     to the next active item.*)
  method getAllowHighlightDisabled : bool meth
  
  (** Highlights the next item that begins with the specified js_string t.  If no
     (other) item begins with the given js_string t, the selection is unchanged.*)
  method highlightNextPrefix : js_string t -> bool meth

end

let menu : (unit -> menu t) constr =
  Js.Unsafe.variable "goog.ui.Menu"

