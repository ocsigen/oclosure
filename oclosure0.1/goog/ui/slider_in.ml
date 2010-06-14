(**
 * OClosure Project - 2010
 * This creates a slider object.
 * @param {goog.dom.DomHelper=} opt_domHelper Optional DOM helper.
 * @constructor
 * @author Bourdin Pierre
 * @extends {goog.ui.SliderBase}*)

open Js
open Sliderbase
type slidorient
type element = JSOO.obj


class external slider inherit sliderbase :
  <
  (** Returns CSS class applied to the slider element.
   * @param {goog.ui.SliderBase.Orientation} orient Orientation of the slider.
   * @return {string} The CSS class applied to the slider element.
   * @protected
   *)
  getCssClass:slidorient -> string;
  createThumbs : unit -> unit;

 > = "goog.ui.Slider"
