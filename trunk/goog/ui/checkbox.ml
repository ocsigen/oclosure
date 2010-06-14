(** OClosure Project - 2010
 * Class goog.ui.CheckBox
 * 
 * 3-state checkbox widget. Fires CHECK or UNCHECK events before toggled and
 * CHANGE event after toggled by user.
 * The checkbox can also be enabled/disabled and get focused and highlighted.
 * 
 * @author : Emmanuel CRESPIN
 * @version 0.1
 * @see 'goog.ui.Control'
 *)

open Control
type element = Dom.element

open Js
class type checkbox = object
  inherit control
  method getChecked : unit -> bool meth

    (** Whether the checkbox is checked.*)
  method isChecked : unit -> bool meth
    
    (** Whether the checkbox is not checked.*)
  method isUnchecked : unit -> bool meth

    (** Whether the checkbox is in partially checked state.*)
  method isUndetermined : unit -> bool meth
    
    (** Sets the checked state of the checkbox.*)
  method setChecked : bool -> unit meth
    
    (** Binds an HTML element to the checkbox which if clicked toggles the checkbox.
     * Behaves the same way as the 'label' HTML tag. The label element has to be the
     * direct or non-direct ancestor of the checkbox element because it will get the
     * focus when keyboard support is implemented.*)
  method setLabel : element -> unit meth
    
    (** Toggles the checkbox.*)
  method toggle : unit -> unit meth
    
    (** @inheritDoc*)
  method createDom : unit -> unit meth
    
    (** @inheritDoc*)
  method decorateInternal : element -> unit meth
    
    (** @inheritDoc*)
  method enterDocument : unit -> unit meth
    
    (** Updates the CSS class names after the checked state has changed.*)
  method updateView : unit -> unit meth
    
    (**Fix for tabindex not being updated so that disabled checkbox is not
     * focusable. In particular this fails in Chrome.*)
  method setEnabled : unit -> unit meth
    
    (** @inheritDoc*)
  method handleKeyEventInternal : unit -> bool meth

end

let checkbox : (unit  -> checkbox t) constr =
  Js.Unsafe.variable "goog.ui.Checkbox"
