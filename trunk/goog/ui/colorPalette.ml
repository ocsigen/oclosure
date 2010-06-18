(** 
    OClosure Project - 2010
    Class goog.ui.ColorPalette
    
    Create a new, empty color picker. 
    
    @author Bozman Cagdas
    @version 0.2
*)
open Palette
open PaletteRenderer
open Goog_dom
open Js
class type colorPalette = object
  inherit palette
end

let colorPalette : (js_string t js_array t opt -> paletteRenderer t opt -> domHelper t opt -> colorPalette t) constr =
  Js.Unsafe.variable "goog.ui.ColorPalette"
