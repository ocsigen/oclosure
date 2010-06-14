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

class external progressBar inherit component : unit ->
< 
  (** Creates the DOM nodes needed for the progress bar. *)
  createDom : unit -> unit;

 (** Called when the DOM for the component is for sure in the document. *)
 enterDocument : unit -> unit;
 
 (** Called when the DOM for the component is for sure in the document. *)
 exitDocument : unit -> unit;

 (** Decorates an existing HTML DIV element as a progress bar input. If the element contains a child with a class name of 'progress-bar-thumb' that will be used as the thumb. *)
 decorateInternal : JSOO.obj -> unit;

 (** The value. *)
 getValue : unit -> float;

 (** Sets the value. *)
 setValue : float -> unit;

 (** Sets the state for a11y of the current value. *)
 setValueState_ : unit -> unit;

 (** The minimum value. *)
 getMinimum : unit -> float;

 (** Sets the minimum number. *)
 setMinimum : float -> unit;

 (** The maximum value. *)
 getMaximum : unit -> float;

 (** Sets the maximum number. *)
 setMaximum : float -> unit;

 (** Changes the orientation. *)
 setOrientation : string -> unit;

 (** The orientation of the progress bar. *)
 getOrientation : unit -> string;

 (** @inheritDoc *)
 disposableInternal : unit -> unit;

> = "goog.ui.ProgressBar"

let vertical = "vertical" 
let horizontal = "horizontal"
