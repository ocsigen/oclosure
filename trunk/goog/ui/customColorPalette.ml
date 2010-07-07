(**
   OClosure Project - 2010
   Class goog.ui.CustomColorPalette
   
   @author : 
   @version 0.2
*)

open Js

class type customColorPalette = object
  inherit ColorPalette.colorPalette
  method performActionInternal_ : Events.event t -> bool t meth

  method promptForCustomColor : unit meth
end

let customColorPalette : (js_string t js_array t -> Palette.paletteRenderer t opt -> Gdom.domHelper t opt -> customColorPalette t) constr = 
  Js.Unsafe.variable "goog.ui.CustomColorPalette"
