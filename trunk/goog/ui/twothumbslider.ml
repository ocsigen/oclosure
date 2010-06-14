(**
 * OClosure Project - 2010
 * This creates a TwoThumbSlider object.
 * @param {goog.dom.DomHelper=} opt_domHelper Optional DOM helper.
 * @constructor
 * @extends {goog.ui.SliderBase}
 * @author Bourdin Pierre
*)


open Js
open SliderBase
type slidorient
type element = Dom.element

class type twoThumbSlider = object
  inherit sliderBase
  (** Returns CSS class applied to the slider element.
   * @param {goog.ui.SliderBase.Orientation} orient Orientation of the slider.
   * @return {js_string t} The CSS class applied to the slider element.
   * @protected
   *)
  method getCssClass:slidorient -> js_string t meth
 (* Creates the thumb members for a twothumbslider. If the
  * element contains a child with a class name 'goog-twothumbslider-value-thumb'
  * (or 'goog-twothumbslider-extent-thumb', respectively), then that will be used
  * as the valueThumb (or as the extentThumb, respectively)
  *)
  method createThumbs : unit -> unit meth

end

let twoThumbSlider : twoThumbSlider t constr =
  Js.Unsafe.variable "goog.ui.TwoThumbSlider"
