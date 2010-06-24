(**
 * OClosure Project - 2010
  This creates a SliderBase object.
 * @param opt_domHelper Optional DOM helper.
 * @constructor
 * @extends
 * @author Bourdin Piere
 * @version 0.1
 *)

open Js 
open Component
type slidorient
type element = Dom.element


let orientation_vertical = "vertical"
let orientation_horizontal = "horizontal"

open Js
class type sliderBase = object
  inherit component
  method createDom : unit meth
  method decorateInternal : element -> unit meth
  (* Called when the DOM for the component is for sure in the document.
   * Subclasses should override this method to set this element's role.*)
  method enterDocument : unit meth
  (* Changes the orientation.
   * @param orient The orientation.*)
  method setOrientation : js_string t -> unit meth
  (*@return the orientation of the slider.
   *)
  method getOrientation : js_string t meth
  (* Moves the thumbs by the specified delta as follows
   * - as long as both thumbs stay within [min,max], both thumbs are moved
   * - once a thumb reaches or exceeds min (or max, respectively), it stays
   * - at min (or max, respectively).
   * In case both thumbs have reached min (or max), no change event will fire.
   * @param delta The delta by which to move the selected range.*)
  method moveThumbs : int -> unit meth
  (* Sets the value and extent of the underlying range model. We enforce that
   * If this is not satisifed for the given extent, the call is ignored and no
   * CHANGE event fires. This is a utility method to allow setting the thumbs
   * simultaneously and ensuring that only one event fires.
   * @param value The value to which to set the value.
   * @param extent The value to which to set the extent.
   *)
  method setValueAndExtent : int -> int -> unit meth
  (* @return The minimum value.
   *)
  method getMinimum : int meth
  (* Sets the minimum number.
  * @param min The minimum value.
  *)
  method setMinimum : int -> unit meth
  (*@return The maximum value.
   *)
  method getMaximum : int meth
  method setMaximum : int -> unit meth
  (* @return The amount to increment/decrement for page up/down as well
   *     as when holding down the mouse button on the background.*)
  method getBlockIncrement : int meth
  (* Sets the amount to increment/decrement for page up/down as well as when
   * holding down the mouse button on the background.
   * @param value The value to set the block increment to.*)
  method setBlockIncrement : int -> unit meth
  (* Sets the minimal value that the extent may have.
   *
   * @param value The minimal value for the extent.
   *)
  method setMinExtent : int -> unit meth
  (* @return The step value used to determine how to round the value.
   *)
  method getStep : int meth
  (* Sets the step value. The step value is used to determine how to round the
   * value.
   * @param step  The step size.
   *)
  method setStep: int -> unit  meth
  (* @return Whether clicking on the backgtround should move directly to
   *     that point.*)
  method getMoveToPointEnabled :unit -> bool  meth
  (* Sets whether clicking on the background should move directly to that point.
  * @param val Whether clicking on the background should move directly
   *     to that point.
   *)
  method setMoveToPointEnabled : bool -> unit meth
  (* @return The value of the underlying range model.
   *)
  method getValue : int meth
  (* Sets the value of the underlying range model. We enforce that
   * If this is not satisifed for the given value, the call is ignored and no
   * CHANGE event fires.
   * @param value The value.
   *)
  method setValue : int -> unit meth
  (* @return The value of the extent of the underlying range model.
  *)
  method getExtent : int meth
  (* Sets the extent of the underlying range model. We enforce that
   * If this is not satisifed for the given extent, the call is ignored and no
   * CHANGE event fires.
   * @param extent The value to which to set the extent.
   *)
  method setExtent : int -> unit meth
  (* Change the visibility of the slider.
   * You must call this if you had set the slider's value when it was invisible.
   * @param visible Whether to show the slider.*)
  method setVisible : bool -> unit meth
  (* Set a11y roles and state.*)
  method setAriaRoles:unit -> unit  meth
  (* Set a11y roles and state when values change.*)
  method updateAriaStates : unit meth
end

let sliderBase : sliderBase t constr =
  Js.Unsafe.variable "goog.ui.SliderBase"
	
