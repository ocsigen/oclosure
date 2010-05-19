
(** 
    * OClosure Project - 2010
    * Class goog.ui.DatePickerEvent, goog.ui.DatePicker.Events, goog.ui.DatePicker
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open DateTimeSymbols  (* goog.i18n.DateTimeSymbols *)
open DateTimeFormat  (* goog.i18n.DateTimeFormat *)
open EventType  (* goog.events.KeyHandler.EventType *)
open KeyHandler  (* goog.events.KeyHandler *)
open Event  (* goog.events.Event *)
open Events  (* goog.events *)
open Classes  (* goog.dom.classes *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)
open Interval  (* goog.date.Interval *)
open Date  (* goog.date.Date *)
open Date  (* goog.date *)

class external datePicker 
inherit component: date(* | date(* opt? *) *) -> object(* opt? *) ->  <
isCreated : unit;
getFirstWeekday : number;
getWeekdayClass : number -> string;
getShowFixedNumWeeks : boolean;
getShowOtherMonths : boolean;
getExtraWeekAtEnd : boolean;
getShowWeekNum : boolean;
getShowWeekdayNames : boolean;
getAllowNone : boolean;
getShowToday : boolean;
setFirstWeekday : number -> unit;
setWeekdayClass : number -> string -> unit;
setShowFixedNumWeeks : boolean -> unit;
setShowOtherMonths : boolean -> unit;
setUseSimpleNavigationMenu : boolean -> unit;
setExtraWeekAtEnd : boolean -> unit;
setShowWeekNum : boolean -> unit;
setShowWeekdayNames : boolean -> unit;
setUseNarrowWeekdayNames : boolean -> unit;
setAllowNone : boolean -> unit;
setShowToday : boolean -> unit;
setDecorator : function -> unit;
previousMonth : unit;
nextMonth : unit;
previousYear : unit;
nextYear : unit;
selectToday : unit;
selectNone : unit;
getDate : date;
setDate : date(* | date *) -> unit;
decorateInternal : unit;
createDom : unit;
enterDocument : unit;
exitDocument : unit;
create : unit;
disposeInternal : unit;
> = "goog.ui.DatePicker"

class external datePickerEvent 
inherit event: string -> datePicker -> date ->  <
> = "goog.ui.DatePickerEvent"
