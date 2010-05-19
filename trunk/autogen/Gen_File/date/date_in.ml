
(** 
    * OClosure Project - 2010
    * Class goog.date.weekDay, goog.date.month, goog.date.Interval, goog.date.DateTime, goog.date.Date, goog.date
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open String  (* goog.string *)
open Asserts  (* goog.asserts *)

class external weekDay :  <
formatMonthAndYear : string -> number -> string;
isLeapYear : number -> boolean;
isLongIsoYear : number -> boolean;
getNumberOfDaysInMonth : number -> number -> number;
isSameDay : date -> date(* opt? *) -> boolean;
isSameMonth : date -> date(* opt? *) -> boolean;
isSameYear : date -> date(* opt? *) -> boolean;
getWeekNumber : number -> number -> number -> number(* opt? *) -> number(* opt? *) -> number;
fromIsoString : string -> dateTime;
setIso8601DateTime : dateTime(* opt? *) -> string -> boolean;
> = "goog.date.weekDay"

class external interval : number(* | string(* opt? *) *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) ->  <
fromIsoString : string -> interval;
toIsoString : boolean(* opt? *) -> string(* opt? *);
equals : interval -> boolean;
clone : interval(* opt? *);
getInverse : interval(* opt? *);
times : number -> interval(* opt? *);
getTotalSeconds : number;
add : interval -> unit;
> = "goog.date.Interval"

class external date 
inherit date: number(* | object(* opt? *) *) -> number(* opt? *) -> number(* opt? *) ->  <
clone : date(* opt? *);
getFullYear : number;
getYear : number;
getMonth : number;
getDate : number;
getTime : number;
getDay : number;
getIsoWeekday : number;
getWeekday : number;
getUTCFullYear : number;
getUTCMonth : number;
getUTCDate : number;
getUTCDay : number;
getUTCHours : number;
getUTCMinutes : number;
getUTCIsoWeekday : number;
getUTCWeekday : number;
getFirstDayOfWeek : number;
getFirstWeekCutOffDay : number;
getNumberOfDaysInMonth : number;
getWeekNumber : number;
getDayOfYear : number;
getTimezoneOffset : number;
getTimezoneOffsetString : string;
set : date -> unit;
setFullYear : number -> unit;
setYear : number -> unit;
setMonth : number -> unit;
setDate : number -> unit;
setTime : number -> unit;
setUTCFullYear : number -> unit;
setUTCMonth : number -> unit;
setUTCDate : number -> unit;
setFirstDayOfWeek : number -> unit;
setFirstWeekCutOffDay : number -> unit;
add : interval -> unit;
toIsoString : boolean(* opt? *) -> boolean(* opt? *) -> string;
toUTCIsoString : boolean(* opt? *) -> boolean(* opt? *) -> string;
equals : date -> boolean;
toString : string;
valueOf : number;
> = "goog.date.Date"

class external dateTime 
inherit date: number(* | object(* opt? *) *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) ->  <
getHours : number;
getMinutes : number;
getSeconds : number;
getMilliseconds : number;
getUTCDay : number;
getUTCHours : number;
getUTCMinutes : number;
getUTCSeconds : number;
getUTCMilliseconds : number;
setHours : number -> unit;
setMinutes : number -> unit;
setSeconds : number -> unit;
setMilliseconds : number -> unit;
setUTCHours : number -> unit;
setUTCMinutes : number -> unit;
setUTCSeconds : number -> unit;
setUTCMilliseconds : number -> unit;
add : interval -> unit;
toIsoString : boolean(* opt? *) -> boolean(* opt? *) -> string;
toXmlDateTime : boolean(* opt? *) -> string;
toUTCIsoString : boolean(* opt? *) -> boolean(* opt? *) -> string;
equals : dateTime -> boolean;
toString : string;
toUsTimeString : boolean(* opt? *) -> boolean(* opt? *) -> boolean(* opt? *) -> string;
toIsoTimeString : boolean(* opt? *) -> string;
clone : dateTime(* opt? *);
> = "goog.date.DateTime"
