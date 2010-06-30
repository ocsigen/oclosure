(**
   OClosure Project - 2010
   Class goog.ui.BidiInput
   
   @author : 
   @version 0.2
*)

open Js

class type bidiInput = object
  inherit Component.component

(** @inheritDoc *)
  method disposeInternal : unit meth

(**
   Returns the direction of the input element.
   @return {?string} Return 'rtl' for right-to-left text,
   'ltr' for left-to-right text, or null if the value itself is not
   enough to determine directionality (e.g. an empty value), and the
   direction is inherited from a parent element (typically the body
   element).
*)
  method getDirection : js_string t opt meth
   
(**
   Returns the value of the underlying input field.
   @return {string} Value of the underlying input field.
*)
  method getValue : js_string t meth

(**
   Sets the value of the underlying input field, and sets the direction
   according to the given value.
   @param {string} value  The Value to set in the underlying input field.
*)
  method setValue : js_string t -> unit meth
end

let bidiInput : (Gdom.domHelper t opt -> bidiInput t) constr = 
  Js.Unsafe.variable "goog.ui.BidiInput"
