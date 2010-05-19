
(** 
    * OClosure Project - 2010
    * Class goog.date.UtcDateTime
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Interval  (* goog.date.Interval *)
open DateTime  (* goog.date.DateTime *)
open Date  (* goog.date.Date *)
open Date  (* goog.date *)

class external utcDateTime 
inherit dateTime: number(* | object(* opt? *) *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) ->  <
fromIsoString : string -> utcDateTime;
clone : utcDateTime;
add : unit;
getTimezoneOffset : unit;
getFullYear : unit;
getMonth : unit;
getDate : unit;
getHours : unit;
getMinutes : unit;
getSeconds : unit;
getMilliseconds : unit;
getDay : unit;
setFullYear : unit;
setMonth : unit;
setDate : unit;
setHours : unit;
setMinutes : unit;
setSeconds : unit;
setMilliseconds : unit;
> = "goog.date.UtcDateTime"
