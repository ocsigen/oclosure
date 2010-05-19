
(** 
    * OClosure Project - 2010
    * Class goog.date.DateRange.StandardDateRangeKeys, goog.date.DateRange.Iterator, goog.date.DateRange
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open StopIteration  (* goog.iter.StopIteration *)
open Iterator  (* goog.iter.Iterator *)
open Interval  (* goog.date.Interval *)
open Date  (* goog.date.Date *)

class external dateRange : date -> date ->  <
getStartDate : date;
getEndDate : date;
iterator : iterator;
equals : dateRange -> dateRange -> boolean;
yesterday : date(* opt? *) -> dateRange;
today : date(* opt? *) -> dateRange;
last7Days : date(* opt? *) -> dateRange;
thisMonth : date(* opt? *) -> dateRange;
lastMonth : date(* opt? *) -> dateRange;
thisWeek : date(* opt? *) -> dateRange;
lastWeek : date(* opt? *) -> dateRange;
lastBusinessWeek : date(* opt? *) -> dateRange;
allTime : date(* opt? *) -> dateRange;
standardDateRange : string -> date(* opt? *) -> dateRange;
> = "goog.date.DateRange"

class external iterator 
inherit iterator: dateRange ->  <
next : unit;
> = "goog.date.DateRange.Iterator"
