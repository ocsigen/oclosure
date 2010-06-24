(**
 * OClosure Project - 2010
 * This creates a slider object.
 * @param opt_domHelper Optional DOM helper.
 * @constructor
 * @author Bourdin Pierre
 * @extends*)

open Js
open SliderBase
type slidorient
type element = Dom.element


open Js
class type slider = object
  inherit sliderBase
  (** Returns CSS class applied to the slider element.
   * @param orient Orientation of the slider.
   * @return The CSS class applied to the slider element.
   * @protected
   *)
  method getCssClass:slidorient -> js_string t meth
  method createThumbs : unit meth

end

let slider : slider t constr =
  Js.Unsafe.variable "goog.ui.Slider"
