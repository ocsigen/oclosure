
(** 
    * OClosure Project - 2010
    * Class goog.ui.SubMenu
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open SubMenuRenderer  (* goog.ui.SubMenuRenderer *)
open MenuItem  (* goog.ui.MenuItem *)
open Menu  (* goog.ui.Menu *)
open ControlContent  (* goog.ui.ControlContent *)
open State  (* goog.ui.Component.State *)
open EventType  (* goog.ui.Component.EventType *)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open Corner  (* goog.positioning.Corner *)
open AnchoredViewportPosition  (* goog.positioning.AnchoredViewportPosition *)
open KeyCodes  (* goog.events.KeyCodes *)
open Classes  (* goog.dom.classes *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)

class external subMenu 
inherit menuItem: controlContent -> (* any = "*" *)(* opt? *) -> domHelper(* opt? *) -> menuItemRenderer(* opt? *) ->  <
enterDocument : unit;
exitDocument : unit;
disposeInternal : unit;
setHighlighted : boolean -> boolean(* opt? *) -> unit;
showSubMenu : unit;
dismissSubMenu : unit;
clearTimers : unit;
setVisible : boolean -> boolean(* opt? *) -> boolean;
handleKeyEvent : keyEvent -> boolean;
handleMouseOver : browserEvent -> unit;
performActionInternal : browserEvent -> boolean;
setAlignToEnd : boolean -> unit;
isAlignedToEnd : boolean;
addItem : menuItem -> unit;
addItemAt : menuItem -> number -> unit;
removeItem : menuItem -> unit;
removeItemAt : number -> unit;
getItemAt : number -> component;
getItemCount : number;
getItems : (* Array[menuItem] *);
getMenu : menu;
setMenu : menu -> boolean(* opt? *) -> unit;
containsElement : element -> boolean;
setPositionAdjustable : boolean -> unit;
isPositionAdjustable : boolean;
> = "goog.ui.SubMenu"
