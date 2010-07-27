(**
   OClosure Project - 2010
   Class goog.events.KeyHandler
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type keyHandler = object
  inherit EventTarget.eventTarget

  method attach : (#Dom_html.element t, #Dom_html.document t) Tools.Union.t 
    -> unit meth

  method detach : unit meth

  method disposeInternal : unit meth

  method getElement : 
      (#Dom_html.element t, #Dom_html.document t) Tools.Union.t opt meth

  method handleEvent : BrowserEvent.browserEvent t meth
end

let tmp = Js.Unsafe.variable "goog.events.KeyHandler"
let keyHandler : ((#Dom_html.element t, #Dom_html.document t) Tools.Union.t opt 
		  ->keyHandler t) constr = tmp
