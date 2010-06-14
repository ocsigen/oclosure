(** OClosure Project - 2010
 * Class goog.ui.MenuButton
 * 
 * A menu button control.  Extends {@link goog.ui.Button} by composing a button
 * with a dropdown arrow and a popup menu.
 * 
 * @author : Emmanuel CRESPIN
 * @version 0.1
 * @see 'goog.ui.Button'
 *)

open Button
open Event
open Menu
open MenuItem

type element = Dom.element

open Js
class type menuButton = object
  inherit button
  (** Sets up event handlers specific to menu buttons.*)
  method enterDocument : unit -> unit meth

 (** Removes event handlers specific to menu buttons, and ensures that the
  * attached menu also exits the document.*)
  method exitDocument : unit -> unit meth
  
  (** @inheritDoc *)
  method disposeInternal : unit -> unit meth
  
  (** Handles mousedown events. Invokes the superclass implementation to dispatch
   * an ACTIVATE event and activate the button.  Also toggles the visibility of
   * the attached menu.*)
  method handleMouseDown : event -> unit meth

  (** Handles mouseup events. Invokes the superclass implementation to dispatch
   * an ACTION event and deactivate the button.*)
  method handleMouseUp : event -> unit meth
  
  (** Performs the appropriate action when the menu button is activated by the
   * user.*)
  method performActionInternal : event -> bool meth
  
  (** Handles mousedown events over the document.  If the mousedown happens over
   * an element unrelated to the component, hides the menu.*)
  method handleDocumentMouseDown : event (**browserEvent*) -> unit meth
  
  (** Returns true if the given element is to be considered part of the component,
   * even if it isn't a DOM descendant of the component's root element.*)
  method containsElement : element -> bool meth
  
  (** @inheritDoc *)
  method handleKeyEventInternal : event -> bool meth
  
  (** Handles {@code ACTION} events dispatched by an activated menu item.*)
  method handleMenuAction : event -> bool meth

  (** Handles {@code BLUR} events dispatched by the popup menu by closing it.
   * Only registered if the menu is focusable.*)
  method handleMenuBlur : event -> unit meth
  
  (** Handles blur events dispatched by the button's key event target when it
   * loses keyboard focus by closing the popup menu (unless it is focusable).
   * Only registered if the button is focusable.*)
  method handleBur : event -> unit meth
 
  (** Returns the menu attached to the button.  If no menu is attached, creates a
   * new empty menu.*)
  method getMenu : unit -> menu meth
  
  (** Replaces the menu attached to the button with the argument, and returns the
   * previous menu (if any).*)
  method setMenu : menu -> menu meth
  
  (** Adds a new menu item at the end of the menu.*)
  method addItem : menuItem -> unit meth
  
  (** Adds a new menu item at the specific index in the menu.*)
  method addItemAt : menuItem -> float -> unit meth
  
  (** Removes the item from the menu and disposes of it.*)
  method removeItem : menuItem -> unit meth

  (** Removes the menu item at a given index in the menu and disposes of it.*)
  method removeItemAt : float -> unit meth
  
  (** Returns the menu item at a given index.*)
  method getItemAt : float -> menuItem meth
  
  (** Returns the number of items in the menu (including separators).*)
  method getItemCount : unit -> float meth
  
  (** Shows/hides the menu button based on the value of the argument.  Also hides
   * the popup menu if the button is being hidden.*)
  method setVisible : bool -> bool meth
  
  (** Enables/disables the menu button based on the value of the argument, and
   * updates its CSS styling.  Also hides the popup menu if the button is being
   * disabled.*)
  method setEnabled : bool -> unit meth
  
  (** @return {boolean} Whether the menu is aligned to the start of the button
   * (left if the render direction is left-to-right, right if the render
   * direction is right-to-left).*)
  method isAlignMenuToStart : unit -> bool meth
  
  (** Sets whether the menu is aligned to the start or the end of the button.*)
  method setAlignMenuToStart : bool -> unit meth
  
  (** Sets whether the menu should scroll when it's too big to fix vertically on
   * the screen.  The css of the menu element should have overflow set to auto.*)
  method setScrollOnOverflow : bool -> unit meth
  
  (** @return {boolean} Wether the menu will scroll when it's to big to fit
   * vertically on the screen.*)
  method isScrollOnOverflow : unit -> bool meth
  
  (** @return {boolean} Whether the attached menu is focusable.*)
  method isFocusablePopupMenu : unit -> bool meth
  
  (** Sets whether the attached popup menu is focusable.  If the popup menu is
   * focusable, it may steal keyboard focus from the menu button, so the button
   * will not hide the menu on blur.*)
  method setFocusablePopupMenu : bool -> unit meth
  
  (** Reveals the menu and hooks up menu-specific event handling.*)
  method showMenu : unit -> unit meth
  
  (** Hides the menu and cleans up menu-specific event handling.*)
  method hideMenu : unit -> unit meth
  
  (** Opens or closes the attached popup menu.*)
  method setOpen : bool -> unit meth

  (** Positions the menu under the button.  May be called directly in cases when
   * the menu size is known to change.*)
  method positionMenu : unit -> unit meth
  
  (** Handles {@code HIGHLIGHT} events dispatched by the attached menu.*)
  method handleHighlightItem : event -> unit meth

  (** Handles UNHIGHLIGHT events dispatched by the associated menu.*)
  method handleUnHighlightItem : event -> unit meth
  
end

let menuButton : (js_string t -> menu -> menuButton t) constr =
  Js.Unsafe.variable "goog.ui.MenuButton"
  
