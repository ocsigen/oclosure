(**
   OClosure Project - 2010

   @author Bourdin Pierre
*)

open Js
open SliderBase

class type slider = object
  inherit sliderBase
  method createThumbs : unit meth
end

let slider : (Gdom.domHelper t opt -> slider t) constr =
  Js.Unsafe.variable "goog.ui.Slider"
