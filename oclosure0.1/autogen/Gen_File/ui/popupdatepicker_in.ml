
(** 
    * OClosure Project - 2010
    * Class goog.ui.PopupDatePicker
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open EventType  (* goog.ui.PopupBase.EventType *)
open Popup  (* goog.ui.Popup *)
open Events  (* goog.ui.DatePicker.Events *)
open DatePicker  (* goog.ui.DatePicker *)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open Corner  (* goog.positioning.Corner *)
open AnchoredPosition  (* goog.positioning.AnchoredPosition *)
open EventType  (* goog.events.EventType *)

class external popupDatePicker 
inherit component: datePicker(* opt? *) -> domHelper(* opt? *) ->  <
createDom : unit;
enterDocument : unit;
disposeInternal : unit;
canDecorate : element -> boolean;
getDatePicker : datePicker;
getDate : date(* opt? *);
setDate : date(* opt? *) -> unit;
getLastTarget : element;
attach : element -> unit;
detach : element -> unit;
setAllowAutoFocus : boolean -> unit;
getAllowAutoFocus : boolean;
showPopup : element -> unit;
hidePopup : unit;
> = "goog.ui.PopupDatePicker"
