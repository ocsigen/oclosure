(**
 * OClosure Project - 2010
 * This creates a TwoThumbSlider object.
 * @param {goog.dom.DomHelper=} opt_domHelper Optional DOM helper.
 * @constructor
 * @extends {goog.ui.SliderBase}
 * @author Bourdin Pierre
*)


open Js
open Sliderbase
type slidorient
type element = JSOO.obj

class external twothumbslider inherit sliderbase :
  <
  (** Returns CSS class applied to the slider element.
   * @param {goog.ui.SliderBase.Orientation} orient Orientation of the slider.
   * @return {string} The CSS class applied to the slider element.
   * @protected
   *)
  getCssClass:slidorient -> string;
 (* Creates the thumb members for a twothumbslider. If the
  * element contains a child with a class name 'goog-twothumbslider-value-thumb'
  * (or 'goog-twothumbslider-extent-thumb', respectively), then that will be used
  * as the valueThumb (or as the extentThumb, respectively)
  *)
 createThumbs : unit -> unit;

 > = "goog.ui.TwoThumbSlider"
