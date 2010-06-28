(**
 * OClosure Project - 2010
 * Class goog.ui.ProgressBar
 *
 * This creates a progress bar object.
 *
 * @author : Oran Charles
 * @version 0.2
 * @see 'goog.ui.Component'
 *)
open Component
open Dom

open Js
class type progressBar = object
  inherit component
  (** Creates the DOM nodes needed for the progress bar. *)
  method createDom : unit meth

 (** Called when the DOM for the component is for sure in the document. *)
  method enterDocument : unit meth
 
 (** Called when the DOM for the component is for sure in the document. *)
  method exitDocument : unit meth

 (** Decorates an existing HTML DIV element as a progress bar input. If the element contains a child with a class name of 'progress-bar-thumb' that will be used as the thumb. *)
  method decorateInternal : element -> unit meth

 (** The value. *)
  method getValue : float meth

 (** Sets the value. *)
  method setValue : float -> unit meth

 (** Sets the state for a11y of the current value. *)
  method setValueState_ : unit meth

 (** The minimum value. *)
  method getMinimum : float meth

 (** Sets the minimum number. *)
  method setMinimum : float -> unit meth

 (** The maximum value. *)
  method getMaximum : float meth

 (** Sets the maximum number. *)
  method setMaximum : float -> unit meth

 (** Changes the orientation. *)
  method setOrientation : js_string t -> unit meth

 (** The orientation of the progress bar. *)
  method getOrientation : js_string t meth

 (** @inheritDoc *)
  method disposableInternal : unit meth

end

let progressBar : progressBar t constr =
  Js.Unsafe.variable "goog.ui.ProgressBar"

(**
   * Enum for representing the orientation of the progress bar.
   *
   * @enum string
*)
module ProgressBar = struct
module Orientation = 
  (struct
     let vertical = Js.string "vertical"
     let horizontal = Js.string "horizontal"
   end)
end
