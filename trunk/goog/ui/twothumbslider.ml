(**
 * OClosure Project - 2010
 * This creates a TwoThumbSlider object.
 * @param opt_domHelper Optional DOM helper.
 * @constructor
 * @extends
 * @author Bourdin Pierre
*)


open Js
open SliderBase
type slidorient
type element = Dom.element

class type twoThumbSlider = object
  inherit sliderBase
  (** Returns CSS class applied to the slider element.
   * @param orient Orientation of the slider.
   * @return The CSS class applied to the slider element.
   * @protected
   *)
  method getCssClass:slidorient -> js_string t meth
 (* Creates the thumb members for a twothumbslider. If the
  * element contains a child with a class name 'goog-twothumbslider-value-thumb'
  * (or 'goog-twothumbslider-extent-thumb', respectively), then that will be used
  * as the valueThumb (or as the extentThumb, respectively)
  *)
  method createThumbs : unit meth

end

let twoThumbSlider : twoThumbSlider t constr =
  Js.Unsafe.variable "goog.ui.TwoThumbSlider"
