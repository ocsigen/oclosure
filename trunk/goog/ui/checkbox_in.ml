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
type element = JSOO.obj

class external checkbox inherit control: unit -> 
  < (** Checked state of the checkbox.*)
    getChecked : unit -> bool;

    (** Whether the checkbox is checked.*)
    isChecked : unit -> bool;
    
    (** Whether the checkbox is not checked.*)
    isUnchecked : unit -> bool;

    (** Whether the checkbox is in partially checked state.*)
    isUndetermined : unit -> bool;
    
    (** Sets the checked state of the checkbox.*)
    setChecked : bool -> unit;
    
    (** Binds an HTML element to the checkbox which if clicked toggles the checkbox.
     * Behaves the same way as the 'label' HTML tag. The label element has to be the
     * direct or non-direct ancestor of the checkbox element because it will get the
     * focus when keyboard support is implemented.*)
    setLabel : element -> unit;
    
    (** Toggles the checkbox.*)
    toggle : unit -> unit;
    
    (** @inheritDoc*)
    createDom : unit -> unit;
    
    (** @inheritDoc*)
    decorateInternal : element -> unit;
    
    (** @inheritDoc*)
    enterDocument : unit -> unit;
    
    (** Updates the CSS class names after the checked state has changed.*)
    updateView : unit -> unit;
    
    (**Fix for tabindex not being updated so that disabled checkbox is not
     * focusable. In particular this fails in Chrome.*)
    setEnabled : unit -> unit;
    
    (** @inheritDoc*)
    handleKeyEventInternal : unit -> bool;

    > = "goog.ui.Checkbox"
