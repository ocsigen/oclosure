(** 
   OClosure Project - 2010
   Class goog.events.Event
   
   A base class for event objects, so that they can support 
   preventDefault and stopPropagation.
   
   @author Oran Charles
   @version 0.1
*)
open Disposable

open Js
class type event = object
  inherit disposable

  method disposeInternal : unit meth

  method stopPropagation : unit meth

  method preventDefault : unit meth
end

let event : (js_string t -> event t) constr =
  Js.Unsafe.variable "goog.events.Event"
