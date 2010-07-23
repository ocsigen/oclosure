(**
   OClosure Project - 2010
   Class goog.events.KeyEvent
   
   @author : 
   @version 0.2
*)

open Js

class type keyEvent = object
  inherit BrowserEvent.browserEvent
end

let tmp = Js.Unsafe.variable "goog.events.KeyEvent"
let keyEvent : (int -> int -> bool t -> #Dom_html.event t 
  -> keyEvent t) constr = tmp
