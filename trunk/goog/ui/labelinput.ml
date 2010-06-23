(**
 * OClosure Project - 2010
 * This creates the label input object.
 * @param {js_string t=} opt_label The text to show as the label.
 * @param {goog.dom.DomHelper=} opt_domHelper Optional DOM helper.
 * @extends {goog.ui.Component}
 * @author Bourdin Piere
 * @version 0.1
*)
open Component
type element = Dom.element


open Js
class type labelinput = object
  inherit component
  (* Creates the DOM nodes needed for the label input.*)
  method createDom : unit meth
 (* Decorates an existing HTML input element as a label input. If the element
  * has a "label" attribute then that will be used as the label property for the
  * label input object.
  * @param {HTMLInputElement} element The HTML input element to decorate.*)
  method decorateInternal : element -> unit meth
 (* Called when the DOM for the component is for sure in the document.*)
  method enterDocument : unit meth
 (* Called when the DOM for the component is removed from the document or
  * when the component no longer is managing the DOM.*)
  method exitDocument : unit meth
  method disposeInternal : unit meth
 (* @return {boolean} Whether the value has changed been changed by the user.*)
  method hasChanged: bool meth
 (* Clears the value of the input element without resetting the default text.*)
  method clear : unit meth
 (* Use this to set the value through script to ensure that the label state is
  * up to date
  * @param {js_string t} s The new value for the input.*)
  method setValue : js_string t -> unit meth
 (* Returns the current value of the text box, returning an empty js_string t if the
  * search box is the default value
  * @return {js_string t} The value of the input box.*)
  method getValue : js_string t meth
 (* This method focuses the input and if selects all the text. If the value
  * hasn't changed it will set the value to the label so that the label text is
  * selected.*)
  method focusAndSelect : unit meth
 
end

let labelinput : labelinput t constr =
  Js.Unsafe.variable "goog.ui.LabelInput"
