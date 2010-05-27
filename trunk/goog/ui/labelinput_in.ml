(**
 * OClosure Project - 2010
 * This creates the label input object.
 * @param {string=} opt_label The text to show as the label.
 * @param {goog.dom.DomHelper=} opt_domHelper Optional DOM helper.
 * @extends {goog.ui.Component}
 * @author Bourdin Piere
 * @version 0.1
*)
open Component
type element = JSOO.obj


class external labelinput inherit component :
  <
  (* Creates the DOM nodes needed for the label input.*)
  createDom : unit -> unit;
 (* Decorates an existing HTML input element as a label input. If the element
  * has a "label" attribute then that will be used as the label property for the
  * label input object.
  * @param {HTMLInputElement} element The HTML input element to decorate.*)
 decorateInternal : element -> unit;
 (* Called when the DOM for the component is for sure in the document.*)
 enterDocument : unit -> unit;
 (* Called when the DOM for the component is removed from the document or
  * when the component no longer is managing the DOM.*)
 exitDocument : unit -> unit;
 disposeInternal : unit -> unit;
 (* @return {boolean} Whether the value has changed been changed by the user.*)
 hasChanged: unit -> bool;
 (* Clears the value of the input element without resetting the default text.*)
 clear : unit -> unit;
 (* Use this to set the value through script to ensure that the label state is
  * up to date
  * @param {string} s The new value for the input.*)
 setValue : string -> unit;
 (* Returns the current value of the text box, returning an empty string if the
  * search box is the default value
  * @return {string} The value of the input box.*)
 getValue : unit -> string;
 (* This method focuses the input and if selects all the text. If the value
  * hasn't changed it will set the value to the label so that the label text is
  * selected.*)
 focusAndSelect : unit -> unit;
 
 > = "goog.ui.LabelInput"
