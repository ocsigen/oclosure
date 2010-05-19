
(** 
    * OClosure Project - 2010
    * Class goog.ui.InputDatePicker
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open PopupDatePicker  (* goog.ui.PopupDatePicker *)
open Component  (* goog.ui.Component *)
open String  (* goog.string *)
open DateTimeParse  (* goog.i18n.DateTimeParse *)
open Dom  (* goog.dom *)
open DateTime  (* goog.date.DateTime *)

class external inputDatePicker 
inherit component: dateTimeFormat -> dateTimeParse -> datePicker(* opt? *) -> domHelper(* opt? *) ->  <
getDatePicker : datePicker;
getDate : date(* opt? *);
setDate : date(* opt? *) -> unit;
setInputValue : string -> unit;
getInputValue : string;
createDom : unit;
setPopupParentElement : element -> unit;
enterDocument : unit;
exitDocument : unit;
decorateInternal : unit;
disposeInternal : unit;
showForElement : element -> unit;
hidePopup : unit;
> = "goog.ui.InputDatePicker"
