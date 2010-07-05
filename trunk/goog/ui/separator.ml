(**
   OClosure Project - 2010
   Class goog.ui.Separator
   
   @author : 
   @version 0.2
*)

open Js

class type separator = object
  inherit Control.control
      
  method enterDocument : unit meth
end

let separator : (separator t) constr = 
  Js.Unsafe.variable "goog.ui.Separator"
