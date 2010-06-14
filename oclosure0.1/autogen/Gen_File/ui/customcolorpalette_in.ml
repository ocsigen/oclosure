
(** 
    * OClosure Project - 2010
    * Class goog.ui.CustomColorPalette
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ColorPalette  (* goog.ui.ColorPalette *)
open Dom  (* goog.dom *)
open Color  (* goog.color *)

class external customColorPalette 
inherit colorPalette: (* Array[string] *) -> paletteRenderer(* opt? *) -> domHelper(* opt? *) ->  <
performActionInternal : event -> boolean;
promptForCustomColor : unit;
> = "goog.ui.CustomColorPalette"
