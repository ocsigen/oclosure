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

type element = JSOO.obj

class external menuButton inherit button: string -> menu ->
< 
  (** Sets up event handlers specific to menu buttons.*)
  enterDocument : unit -> unit;

 (** Removes event handlers specific to menu buttons, and ensures that the
  * attached menu also exits the document.*)
  exitDocument : unit -> unit;
  
  (** @inheritDoc *)
  disposeInternal : unit -> unit;
  
  (** Handles mousedown events. Invokes the superclass implementation to dispatch
   * an ACTIVATE event and activate the button.  Also toggles the visibility of
   * the attached menu.*)
  handleMouseDown : event -> unit;

  (** Handles mouseup events. Invokes the superclass implementation to dispatch
   * an ACTION event and deactivate the button.*)
  handleMouseUp : event -> unit;
  
  (** Performs the appropriate action when the menu button is activated by the
   * user.*)
  performActionInternal : event -> bool;
  
  (** Handles mousedown events over the document.  If the mousedown happens over
   * an element unrelated to the component, hides the menu.*)
  handleDocumentMouseDown : event (**browserEvent*) -> unit;
  
  (** Returns true if the given element is to be considered part of the component,
   * even if it isn't a DOM descendant of the component's root element.*)
  containsElement : element -> bool;
  
  (** @inheritDoc *)
  handleKeyEventInternal : event -> bool;
  
  (** Handles {@code ACTION} events dispatched by an activated menu item.*)
  handleMenuAction : event -> bool;

  (** Handles {@code BLUR} events dispatched by the popup menu by closing it.
   * Only registered if the menu is focusable.*)
  handleMenuBlur : event -> unit;
  
  (** Handles blur events dispatched by the button's key event target when it
   * loses keyboard focus by closing the popup menu (unless it is focusable).
   * Only registered if the button is focusable.*)
  handleBur : event -> unit;
 
  (** Returns the menu attached to the button.  If no menu is attached, creates a
   * new empty menu.*)
  getMenu : unit -> menu;
  
  (** Replaces the menu attached to the button with the argument, and returns the
   * previous menu (if any).*)
  setMenu : menu -> menu;
  
  (** Adds a new menu item at the end of the menu.*)
  addItem : menuItem -> unit;
  
  (** Adds a new menu item at the specific index in the menu.*)
  addItemAt : menuItem -> float -> unit;
  
  (** Removes the item from the menu and disposes of it.*)
  removeItem : menuItem -> unit;

  (** Removes the menu item at a given index in the menu and disposes of it.*)
  removeItemAt : float -> unit;
  
  (** Returns the menu item at a given index.*)
  getItemAt : float -> menuItem;
  
  (** Returns the number of items in the menu (including separators).*)
  getItemCount : unit -> float;
  
  (** Shows/hides the menu button based on the value of the argument.  Also hides
   * the popup menu if the button is being hidden.*)
  setVisible : bool -> bool;
  
  (** Enables/disables the menu button based on the value of the argument, and
   * updates its CSS styling.  Also hides the popup menu if the button is being
   * disabled.*)
  setEnabled : bool -> unit;
  
  (** @return {boolean} Whether the menu is aligned to the start of the button
   * (left if the render direction is left-to-right, right if the render
   * direction is right-to-left).*)
  isAlignMenuToStart : unit -> bool;
  
  (** Sets whether the menu is aligned to the start or the end of the button.*)
  setAlignMenuToStart : bool -> unit;
  
  (** Sets whether the menu should scroll when it's too big to fix vertically on
   * the screen.  The css of the menu element should have overflow set to auto.*)
  setScrollOnOverflow : bool -> unit;
  
  (** @return {boolean} Wether the menu will scroll when it's to big to fit
   * vertically on the screen.*)
  isScrollOnOverflow : unit -> bool;
  
  (** @return {boolean} Whether the attached menu is focusable.*)
  isFocusablePopupMenu : unit -> bool;
  
  (** Sets whether the attached popup menu is focusable.  If the popup menu is
   * focusable, it may steal keyboard focus from the menu button, so the button
   * will not hide the menu on blur.*)
  setFocusablePopupMenu : bool -> unit;
  
  (** Reveals the menu and hooks up menu-specific event handling.*)
  showMenu : unit -> unit;
  
  (** Hides the menu and cleans up menu-specific event handling.*)
  hideMenu : unit -> unit;
  
  (** Opens or closes the attached popup menu.*)
  setOpen : bool -> unit;

  (** Positions the menu under the button.  May be called directly in cases when
   * the menu size is known to change.*)
  positionMenu : unit -> unit;
  
  (** Handles {@code HIGHLIGHT} events dispatched by the attached menu.*)
  handleHighlightItem : event -> unit;

  (** Handles UNHIGHLIGHT events dispatched by the associated menu.*)
  handleUnHighlightItem : event -> unit;
  
 > = "goog.ui.MenuButton"
  
