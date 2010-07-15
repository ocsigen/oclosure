(**
   OClosure Project - 2010
   Class goog.i18n.DateTimeFormat
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

module DateTimeFormat = struct
  type format = 
    | FULL_DATE
    | LONG_DATE
    | MEDIUM_DATE
    | SHORT_DATE
    | FULL_TIME
    | LONG_TIME
    | MEDIUM_TIME
    | SHORT_TIME
    | FULL_DATETIME
    | LONG_DATETIME
    | MEDIUM_DATETIME
    | SHORT_DATETIME
end

class type dateTimeFormat = object
  method format : Js.date t -> TimeZone.timeZone t opt -> js_string t meth
end

let dateTimeFormat : ((js_string t, DateTimeFormat.format) Tools.Union.t 
		      -> dateTimeFormat t) constr = 
  Js.Unsafe.variable "goog.i18n.DateTimeFormat"
