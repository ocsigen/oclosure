
(** 
    * OClosure Project - 2010
    * Class goog.ui.ColorPicker.EventType, goog.ui.ColorPicker
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open State  (* goog.ui.Component.State *)
open Component  (* goog.ui.Component *)
open ColorPalette  (* goog.ui.ColorPalette *)

class external colorPicker 
inherit component: domHelper(* opt? *) -> colorPalette(* opt? *) ->  <
getColors : (* Array[string] *)(* opt? *);
setColors : (* Array[string] *) -> unit;
addColors : (* Array[string] *) -> unit;
setSize : size(* | number *) -> unit;
getSize : size(* opt? *);
setColumnCount : number -> unit;
getSelectedIndex : number;
setSelectedIndex : number -> unit;
getSelectedColor : string(* opt? *);
setSelectedColor : string -> unit;
isFocusable : boolean;
setFocusable : boolean -> unit;
canDecorate : element -> boolean;
enterDocument : unit;
disposeInternal : unit;
focus : unit;
createSimpleColorGrid : domHelper(* opt? *) -> colorPicker;
> = "goog.ui.ColorPicker"
