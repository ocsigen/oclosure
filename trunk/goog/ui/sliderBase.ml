(**
 * OClosure Project - 2010
  This creates a SliderBase object.
 * @param {goog.dom.DomHelper=} opt_domHelper Optional DOM helper.
 * @constructor
 * @extends {goog.ui.Component}
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
  method createDom : unit->unit meth
  method decorateInternal : element -> unit meth
  (* Called when the DOM for the component is for sure in the document.
   * Subclasses should override this method to set this element's role.*)
  method enterDocument : unit -> unit meth
  (* Changes the orientation.
   * @param {goog.ui.SliderBase.Orientation} orient The orientation.*)
  method setOrientation : js_string t -> unit meth
  (*@return {goog.ui.SliderBase.Orientation} the orientation of the slider.
   *)
  method getOrientation : unit -> js_string t meth
  (* Moves the thumbs by the specified delta as follows
   * - as long as both thumbs stay within [min,max], both thumbs are moved
   * - once a thumb reaches or exceeds min (or max, respectively), it stays
   * - at min (or max, respectively).
   * In case both thumbs have reached min (or max), no change event will fire.
   * @param {number} delta The delta by which to move the selected range.*)
  method moveThumbs : int -> unit meth
  (* Sets the value and extent of the underlying range model. We enforce that
   * If this is not satisifed for the given extent, the call is ignored and no
   * CHANGE event fires. This is a utility method to allow setting the thumbs
   * simultaneously and ensuring that only one event fires.
   * @param {number} value The value to which to set the value.
   * @param {number} extent The value to which to set the extent.
   *)
  method setValueAndExtent : int -> int -> unit meth
  (* @return {number} The minimum value.
   *)
  method getMinimum : unit->int meth
  (* Sets the minimum number.
  * @param {number} min The minimum value.
  *)
  method setMinimum : int -> unit meth
  (*@return {number} The maximum value.
   *)
  method getMaximum : unit -> int meth
  method setMaximum : int -> unit meth
  (* @return {number} The amount to increment/decrement for page up/down as well
   *     as when holding down the mouse button on the background.*)
  method getBlockIncrement : unit -> int meth
  (* Sets the amount to increment/decrement for page up/down as well as when
   * holding down the mouse button on the background.
   * @param {number} value The value to set the block increment to.*)
  method setBlockIncrement : int -> unit meth
  (* Sets the minimal value that the extent may have.
   *
   * @param {number} value The minimal value for the extent.
   *)
  method setMinExtent : int -> unit meth
  (* @return {?number} The step value used to determine how to round the value.
   *)
  method getStep : unit -> int meth
  (* Sets the step value. The step value is used to determine how to round the
   * value.
   * @param {?number} step  The step size.
   *)
  method setStep: int -> unit  meth
  (* @return {boolean} Whether clicking on the backgtround should move directly to
   *     that point.*)
  method getMoveToPointEnabled :unit -> bool  meth
  (* Sets whether clicking on the background should move directly to that point.
  * @param {boolean} val Whether clicking on the background should move directly
   *     to that point.
   *)
  method setMoveToPointEnabled : bool -> unit meth
  (* @return {number} The value of the underlying range model.
   *)
  method getValue : unit -> int meth
  (* Sets the value of the underlying range model. We enforce that
   * If this is not satisifed for the given value, the call is ignored and no
   * CHANGE event fires.
   * @param {number} value The value.
   *)
  method setValue : int -> unit meth
  (* @return {number} The value of the extent of the underlying range model.
  *)
  method getExtent : unit -> int meth
  (* Sets the extent of the underlying range model. We enforce that
   * If this is not satisifed for the given extent, the call is ignored and no
   * CHANGE event fires.
   * @param {number} extent The value to which to set the extent.
   *)
  method setExtent : int -> unit meth
  (* Change the visibility of the slider.
   * You must call this if you had set the slider's value when it was invisible.
   * @param {boolean} visible Whether to show the slider.*)
  method setVisible : bool -> unit meth
  (* Set a11y roles and state.*)
  method setAriaRoles:unit -> unit  meth
  (* Set a11y roles and state when values change.*)
  method updateAriaStates : unit -> unit meth
end

let sliderBase : sliderBase t constr =
  Js.Unsafe.variable "goog.ui.SliderBase"
	
