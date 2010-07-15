(**
 * OClosure Project - 2010
 * This creates the label input object.
 * @param opt_label The text to show as the label.
 * @param opt_domHelper Optional DOM helper.
 * @author Bourdin Piere
 * @version 0.2
*)

open Js

class type labelInput = object
  inherit Component.component

  method createDom : unit meth

  method decorateInternal : #Dom_html.element t -> unit meth

  method enterDocument : unit meth

  method exitDocument : unit meth

  method disposeInternal : unit meth

  method hasChanged: bool t meth

  method clear : unit meth

  method setValue : js_string t -> unit meth

  method getValue : js_string t meth

  method focusAndSelect : unit meth 
end

let labelInput : (js_string t opt -> Gdom.domHelper t opt -> 
  labelInput t) constr = Js.Unsafe.variable "goog.ui.LabelInput"
