(**
 * OClosure Project - 2010
 * This creates a slider object.
 * @param opt_domHelper Optional DOM helper.
 * @constructor
 * @author Bourdin Pierre
 * @extends*)

open Js
open SliderBase

class type slider = object
  inherit sliderBase

(** @inheritDoc *)
  method createThumbs : unit meth

end

let slider : slider t constr =
  Js.Unsafe.variable "goog.ui.Slider"
