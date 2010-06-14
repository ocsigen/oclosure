
(** 
    * OClosure Project - 2010
    * Class goog.ui.PopupColorPicker
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Popup  (* goog.ui.Popup *)
open Component  (* goog.ui.Component *)
open EventType  (* goog.ui.ColorPicker.EventType *)
open ColorPicker  (* goog.ui.ColorPicker *)
open Corner  (* goog.positioning.Corner *)
open AnchoredPosition  (* goog.positioning.AnchoredPosition *)
open EventType  (* goog.events.EventType *)
open Classes  (* goog.dom.classes *)

class external popupColorPicker 
inherit component: domHelper(* opt? *) -> colorPicker(* opt? *) ->  <
createDom : unit;
disposeInternal : unit;
canDecorate : element -> boolean;
getColorPicker : colorPicker;
getAutoHide : boolean;
setAutoHide : boolean -> unit;
getAutoHideRegion : element;
setAutoHideRegion : element -> unit;
getPopup : popupBase(* opt? *);
getLastTarget : element;
attach : element -> unit;
detach : element -> unit;
getSelectedColor : string(* opt? *);
setFocusable : boolean -> unit;
setAllowAutoFocus : boolean -> unit;
getAllowAutoFocus : boolean;
setToggleMode : boolean -> unit;
getToggleMode : boolean;
setRememberSelection : boolean -> unit;
getRememberSelection : boolean;
addColors : (* Array[string] *) -> unit;
clearColors : unit;
setPinnedCorner : corner -> unit;
setPopupCorner : corner -> unit;
> = "goog.ui.PopupColorPicker"
