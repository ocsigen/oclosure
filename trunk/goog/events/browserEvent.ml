(**
   OClosure Project - 2010
   Class goog.events.BrowserEvent
   
   @author : 
   @version 0.2
*)

open Js

class type browserEvent = object

end

let browserEvent : (browserEvent t) constr = 
  Js.Unsafe.variable "goog.events.BrowserEvent"
