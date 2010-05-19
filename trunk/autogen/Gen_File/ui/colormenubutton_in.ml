
(** 
    * OClosure Project - 2010
    * Class goog.ui.ColorMenuButton
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open MenuButton  (* goog.ui.MenuButton *)
open Menu  (* goog.ui.Menu *)
open ControlContent  (* goog.ui.ControlContent *)
open EventType  (* goog.ui.Component.EventType *)
open ColorPalette  (* goog.ui.ColorPalette *)
open ColorMenuButtonRenderer  (* goog.ui.ColorMenuButtonRenderer *)
open Object  (* goog.object *)
open Array  (* goog.array *)

class external colorMenuButton 
inherit menuButton: controlContent -> menu(* opt? *) -> menuButtonRenderer(* opt? *) -> domHelper(* opt? *) ->  <
newColorMenu : (* Array[control] *)(* opt? *) -> domHelper(* opt? *) -> menu;
getSelectedColor : string(* opt? *);
setSelectedColor : string(* opt? *) -> unit;
setValue : string(* opt? *) -> unit;
handleMenuAction : event -> unit;
setOpen : boolean -> unit;
> = "goog.ui.ColorMenuButton"
