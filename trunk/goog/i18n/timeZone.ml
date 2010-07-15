(**
   OClosure Project - 2010
   Class goog.i18n.TimeZone
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

class type timeZone = object

  method getDaylightAdjustment : Js.date t -> int meth

  method getGMTString : Js.date t -> js_string t meth

  method getLongName : Js.date t -> js_string t meth

  method getOffset : Js.date t -> int meth

  method getRFCTimeZoneString : Js.date t -> js_string t meth

  method getShortName : Js.date t -> int meth

  method getTimeZoneId : js_string t meth

  method isDaylightTime : Js.date t -> bool t meth

end

let timeZone : timeZone t constr = Js.Unsafe.variable "goog.i18n.TimeZone"

module TimeZone = struct
  let createTimeZone (offset:int) : timeZone t = Js.Unsafe.fun_call
    (Js.Unsafe.variable "goog.i18n.TimeZone.createTimeZone")
    [|Js.Unsafe.inject offset|]
end
