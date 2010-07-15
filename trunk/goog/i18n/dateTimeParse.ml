(**
   OClosure Project - 2010
   Class goog.i18n.DateTimeParse
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

class type dateTimeParse = object
  method parse : js_string t -> Js.date t -> int opt -> int meth

  method strictParse : js_string t -> Js.date t -> int opt -> int meth
end

let dateTimeParse : ((js_string t, DateTimeFormat.DateTimeFormat.format) Tools.Union.t 
		      -> dateTimeParse t) constr = 
  Js.Unsafe.variable "goog.i18n.DateTimeParse"
