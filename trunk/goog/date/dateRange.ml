(**
   OClosure Project - 2010
   Class goog.date.DateRange

   Provide DateRange and StandardDateRangeKeys
   
   @author : 
   @version 0.2
*)

open Js

class type dateRange = object
   method getEndDate : Date.date t meth
   method getStartDate : Date.date t meth
end

(**
   Constructs a date range.
   @constructor
   @param startDate The start date of the range.
   @param endDate The end date of the range.
*)
let dateRange : (Js.date t -> Js.date t -> dateRange t) constr = 
  Js.Unsafe.variable "goog.date.DateRange"


class type standardDateRangeKeys = object

end

let standardDateRangeKeys : (standardDateRangeKeys t) constr = 
  Js.Unsafe.variable "goog.date.DateRange.StandardDateRangeKeys"
