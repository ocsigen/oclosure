(** 
   OClosure Project - 2010
   Class goog.ui.ScrollFloater

   @author : Emmanuel CRESPIN
   @version 0.1
*)

open Component

open Js
class type scrollFloater = object
  inherit component
  method createDom : unit meth
  method decorateInternal : #Dom_html.element t -> unit meth
  method enterDocument : unit meth
  method diposeInternal : unit meth
  method setScrollingEnabled : bool t -> unit meth
  method isScrollingEnabled : bool t meth
  method isFloating : bool t meth
end

let tmp = Js.Unsafe.variable "goog.ui.ScrollFloater"
let scrollFloater : (#Dom_html.element t -> Gdom.domHelper t opt 
  -> scrollFloater t) constr = tmp
  
