(**
   OClosure Project - 2010
   Class goog.ui.CustomColorPalette
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

class type customColorPalette = object
  inherit ColorPalette.colorPalette
  method performActionInternal : #Events.event t -> bool t meth

  method promptForCustomColor : unit meth
end

let customColorPalette = Tools.variable "[oclosure]goog.ui.CustomColorPalette[/oclosure]"
let customColorPalette : (js_string t js_array t -> 
  customColorPalette #Palette.paletteRenderer t opt -> Gdom.domHelper t opt -> 
    customColorPalette t) constr = customColorPalette
