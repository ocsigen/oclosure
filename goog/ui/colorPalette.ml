(** 
    OClosure Project - 2010
    Class goog.ui.ColorPalette
    
    @author Bozman Cagdas
    @version 0.2
*)

open Palette
open Js

class type colorPalette = object
  inherit palette
  
  method getColors : js_string t js_array t meth

  method getSelectedColor : js_string t opt meth

  method setColors : js_string t js_array t -> unit meth

  method setSelectedColor : js_string t opt -> unit meth
end

let colorPalette = Tools.variable "[oclosure]goog.ui.ColorPalette[/oclosure]"
let colorPalette : (js_string t js_array t opt -> palette #paletteRenderer t opt
  -> Gdom.domHelper t opt -> colorPalette t) constr = colorPalette
