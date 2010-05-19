
(** 
    * OClosure Project - 2010
    * Class goog.ui.ColorPalette
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open PaletteRenderer  (* goog.ui.PaletteRenderer *)
open Palette  (* goog.ui.Palette *)
open Style  (* goog.style *)
open Dom  (* goog.dom *)
open Color  (* goog.color *)
open Array  (* goog.array *)

class external colorPalette 
inherit palette: (* Array[string] *)(* opt? *) -> paletteRenderer(* opt? *) -> domHelper(* opt? *) ->  <
getColors : (* Array[string] *);
setColors : (* Array[string] *) -> unit;
getSelectedColor : string(* opt? *);
setSelectedColor : string(* opt? *) -> unit;
> = "goog.ui.ColorPalette"
