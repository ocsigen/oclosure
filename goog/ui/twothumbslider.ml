(**
   OClosure Project - 2010

   Class goog.ui.TwoThumbSlider
   
   @author Charles Oran
   @version 0.2
*)
open Js
open SliderBase

module TwoThumbSlider = struct
  let _CSS_CLASS_PREFIX = Js.string "goog-twothumbslider"

  let _VALUE_THUMBS_CSS_CLASS = Js.string "goog-twothumbslider-value-thumb"

  let _EXTENT_THUMBS_CSS_CLASS = Js.string "goog-twothumbslider-extent-thumb"
end

class type twoThumbSlider = object
  inherit sliderBase

  method getCssClass : js_string t meth

  method createThumbs : unit meth 
end

let twoThumbSlider : (Gdom.domHelper t opt -> twoThumbSlider t) constr =
  Js.Unsafe.variable "goog.ui.TwoThumbSlider"
