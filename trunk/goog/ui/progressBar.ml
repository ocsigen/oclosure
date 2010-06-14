(**
 * OClosure Project - 2010
 * Class goog.ui.ProgressBar
 *
 * This creates a progress bar object.
 *
 * @author : Oran Charles
 * @version 0.1
 * @see 'goog.ui.Component'
 *)
open Component
open Dom

open Js
class type progressBar = object
  inherit component
  (** Creates the DOM nodes needed for the progress bar. *)
  method createDom : unit -> unit meth

 (** Called when the DOM for the component is for sure in the document. *)
  method enterDocument : unit -> unit meth
 
 (** Called when the DOM for the component is for sure in the document. *)
  method exitDocument : unit -> unit meth

 (** Decorates an existing HTML DIV element as a progress bar input. If the element contains a child with a class name of 'progress-bar-thumb' that will be used as the thumb. *)
  method decorateInternal : element -> unit meth

 (** The value. *)
  method getValue : unit -> float meth

 (** Sets the value. *)
  method setValue : float -> unit meth

 (** Sets the state for a11y of the current value. *)
  method setValueState_ : unit -> unit meth

 (** The minimum value. *)
  method getMinimum : unit -> float meth

 (** Sets the minimum number. *)
  method setMinimum : float -> unit meth

 (** The maximum value. *)
  method getMaximum : unit -> float meth

 (** Sets the maximum number. *)
  method setMaximum : float -> unit meth

 (** Changes the orientation. *)
  method setOrientation : js_string t -> unit meth

 (** The orientation of the progress bar. *)
  method getOrientation : unit -> js_string t meth

 (** @inheritDoc *)
  method disposableInternal : unit -> unit meth

end

let progressBar : (unit -> progressBar t) constr =
  Js.Unsafe.variable "goog.ui.ProgressBar"

let vertical = "vertical" 
let horizontal = "horizontal"
