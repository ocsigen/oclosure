(**
 * OClosure Project - 2010
 * This creates a slider object.
 * @param {goog.dom.DomHelper=} opt_domHelper Optional DOM helper.
 * @constructor
 * @author Bourdin Pierre
 * @extends {goog.ui.SliderBase}*)

open Js
open SliderBase
type slidorient
type element = Dom.element


open Js
class type slider = object
  inherit sliderBase
  (** Returns CSS class applied to the slider element.
   * @param {goog.ui.SliderBase.Orientation} orient Orientation of the slider.
   * @return {js_string t} The CSS class applied to the slider element.
   * @protected
   *)
  method getCssClass:slidorient -> js_string t meth
  method createThumbs : unit -> unit meth

end

let slider : slider t constr =
  Js.Unsafe.variable "goog.ui.Slider"
