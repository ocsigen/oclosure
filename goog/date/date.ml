(**
   OClosure Project - 2010
   Class goog.date.Date

   Date module.

   Contains classes Date, DateTime, Interval

   @author : Cardoso Gabriel
   @version 0.2
*)

include Interval

class type date = object ('self)
  method add : interval Js.t -> unit Js.meth
  method clone : 'self Js.t Js.meth
  method equals : 'self Js.t -> bool Js.t Js.meth
  method getDate : int Js.meth
  method getDay : int Js.meth
  method getDayOfYear : int Js.meth
  method getFirstDayOfWeek : int Js.meth
  method getFirstWeekCutOffDay : int Js.meth
  method getFullYear : int Js.meth
  method getIsoWeekday : int Js.meth
  method getMonth : int Js.meth
  method getNumberOfDaysInMonth : int Js.meth
  method getTime : float Js.t Js.meth
  method getTimezoneOffset : int Js.meth
  method getTimezoneOffsetString : Js.js_string Js.t Js.meth
  method getUTCDate : int Js.meth
  method getUTCDay : int Js.meth
  method getUTCFullYear : int Js.meth
  method getUTCHours : int Js.meth
  method getUTCIsoWeekday : int Js.meth
  method getUTCMinutes : int Js.meth
  method getUTCMonth : int Js.meth
  method getUTCWeekday : int Js.meth
  method getWeekNumber : int Js.meth
  method getWeekday : int Js.meth
  method getYear : int Js.meth
  method set : date Js.t -> unit Js.meth
  method setDate : int -> float Js.t Js.meth
  method setFirstDayOfWeek : int -> unit Js.meth
  method setFirstWeekCutOffDay : int -> unit Js.meth
  method setFullYear : int -> float Js.t Js.meth
  method setMonth : int -> float Js.t Js.meth
  method setTime : float -> float Js.t Js.meth
  method setUTCDate : int -> float Js.t Js.meth
  method setUTCFullYear : int -> float Js.t Js.meth
  method setUTCMonth : int -> float Js.t Js.meth
  method setYear : int -> unit Js.meth
  method toIsoString : bool Js.t Js.opt -> bool Js.t Js.opt -> Js.js_string Js.t Js.meth
  method toString : Js.js_string Js.t Js.meth
  method toUTCIsoString : bool Js.t Js.opt -> bool Js.t Js.opt -> Js.js_string Js.t Js.meth
  method valueOf : float Js.t Js.meth
end

let date : (int Js.opt -> int Js.opt -> int Js.opt -> date Js.t) Js.constr = 
  Tools.variable "[oclosure]goog.date.Date[/oclosure]"

class type dateTime = object ('self)
  inherit date
  method getHours : int Js.meth
  method getMinutes : int Js.meth
  method getSeconds : int Js.meth
  method getMilliseconds : int Js.meth
  method getUTCDay : int Js.meth 
  method getUTCHours : int Js.meth 
  method getUTCMinutes : int Js.meth 
  method getUTCSeconds : int Js.meth 
  method getUTCMilliseconds : int Js.meth 
  method setHours : int -> float Js.t Js.meth 
  method setMinutes : int -> float Js.t Js.meth
  method setSeconds : int -> float Js.t Js.meth 
  method setMilliseconds : int -> float Js.t Js.meth 
  method setUTCHours : int -> float Js.t Js.meth 
  method setUTCMinutes : int -> float Js.t Js.meth 
  method setUTCSeconds : int -> float Js.t Js.meth 
  method setUTCMilliseconds : int -> float Js.t Js.meth 
  method add : interval Js.t -> unit Js.meth 
  method toIsoString : bool Js.t Js.opt -> bool Js.t Js.opt -> Js.js_string Js.t Js.meth 
  method toXmlDateTime : bool Js.t Js.opt -> Js.js_string Js.t Js.meth 
  method toUTCIsoString : bool Js.t Js.opt -> bool Js.t Js.opt -> Js.js_string Js.t Js.meth 
  method toString : Js.js_string Js.t Js.meth 
  method toUsTimeString : bool Js.t Js.opt -> bool Js.t Js.opt -> bool Js.t Js.opt -> Js.js_string Js.t Js.meth 
  method toIsoTimeString : bool Js.t Js.opt -> Js.js_string Js.t Js.meth
end

let dateTime : (int Js.opt -> int Js.opt -> int Js.opt -> int Js.opt -> int Js.opt -> int Js.opt -> int Js.opt -> dateTime Js.t) Js.constr =
  Tools.variable "[oclosure]goog.date.DateTime[/oclosure]"

class type dateRange = object
   method getEndDate : date Js.t Js.meth
   method getStartDate : date Js.t Js.meth
end

let dateRange : (Js.date Js.t -> Js.date Js.t -> dateRange Js.t) Js.constr = 
  Tools.variable "[oclosure]goog.date.DateRange[/oclosure]"


class type standardDateRangeKeys = object

end

let standardDateRangeKeys : (standardDateRangeKeys Js.t) Js.constr = 
  Tools.variable "[oclosure]goog.date.DateRange.StandardDateRangeKeys[/oclosure]"
