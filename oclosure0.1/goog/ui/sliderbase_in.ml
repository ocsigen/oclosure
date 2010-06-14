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
type element = JSOO.obj


let orientation_vertical = "vertical"
let orientation_horizontal = "horizontal"

class external sliderbase inherit component :
<
  createDom : unit->unit;
  decorateInternal : element -> unit;
  (* Called when the DOM for the component is for sure in the document.
   * Subclasses should override this method to set this element's role.*)
  enterDocument : unit -> unit;
  (* Changes the orientation.
   * @param {goog.ui.SliderBase.Orientation} orient The orientation.*)
  setOrientation : string -> unit;
  (*@return {goog.ui.SliderBase.Orientation} the orientation of the slider.
   *)
  getOrientation : unit -> string;
  (* Moves the thumbs by the specified delta as follows
   * - as long as both thumbs stay within [min,max], both thumbs are moved
   * - once a thumb reaches or exceeds min (or max, respectively), it stays
   * - at min (or max, respectively).
   * In case both thumbs have reached min (or max), no change event will fire.
   * @param {number} delta The delta by which to move the selected range.*)
  moveThumbs : int -> unit;
  (* Sets the value and extent of the underlying range model. We enforce that
   * getMinimum() <= value <= getMaximum() - extent and
   * getMinExtent <= extent <= getMaximum() - getValue()
   * If this is not satisifed for the given extent, the call is ignored and no
   * CHANGE event fires. This is a utility method to allow setting the thumbs
   * simultaneously and ensuring that only one event fires.
   * @param {number} value The value to which to set the value.
   * @param {number} extent The value to which to set the extent.
   *)
  setValueAndExtent : int -> int -> unit;
  (* @return {number} The minimum value.
   *)
  getMinimum : unit->int;
  (* Sets the minimum number.
  * @param {number} min The minimum value.
  *)
  setMinimum : int -> unit;
  (*@return {number} The maximum value.
   *)
  getMaximum : unit -> int;
  setMaximum : int -> unit;
  (* @return {number} The amount to increment/decrement for page up/down as well
   *     as when holding down the mouse button on the background.*)
  getBlockIncrement : unit -> int;
  (* Sets the amount to increment/decrement for page up/down as well as when
   * holding down the mouse button on the background.
   * @param {number} value The value to set the block increment to.*)
  setBlockIncrement : int -> unit;
  (* Sets the minimal value that the extent may have.
   *
   * @param {number} value The minimal value for the extent.
   *)
  setMinExtent : int -> unit;
  (* @return {?number} The step value used to determine how to round the value.
   *)
  getStep : unit -> int;
  (* Sets the step value. The step value is used to determine how to round the
   * value.
   * @param {?number} step  The step size.
   *)
  setStep: int -> unit ;
  (* @return {boolean} Whether clicking on the backgtround should move directly to
   *     that point.*)
  getMoveToPointEnabled :unit -> bool ;
  (* Sets whether clicking on the background should move directly to that point.
  * @param {boolean} val Whether clicking on the background should move directly
   *     to that point.
   *)
  setMoveToPointEnabled : bool -> unit;
  (* @return {number} The value of the underlying range model.
   *)
  getValue : unit -> int;
  (* Sets the value of the underlying range model. We enforce that
   * getMinimum() <= value <= getMaximum() - getExtent()
   * If this is not satisifed for the given value, the call is ignored and no
   * CHANGE event fires.
   * @param {number} value The value.
   *)
  setValue : int -> unit;
  (* @return {number} The value of the extent of the underlying range model.
  *)
  getExtent : unit -> int;
  (* Sets the extent of the underlying range model. We enforce that
   * getMinExtent() <= extent <= getMaximum() - getValue()
   * If this is not satisifed for the given extent, the call is ignored and no
   * CHANGE event fires.
   * @param {number} extent The value to which to set the extent.
   *)
  setExtent : int -> unit;
  (* Change the visibility of the slider.
   * You must call this if you had set the slider's value when it was invisible.
   * @param {boolean} visible Whether to show the slider.*)
  setVisible : bool -> unit;
  (* Set a11y roles and state.*)
  setAriaRoles:unit -> unit ;
  (* Set a11y roles and state when values change.*)
  updateAriaStates : unit -> unit;
  > = "goog.ui.SliderBase"
	
