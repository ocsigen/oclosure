open Js
open EventTarget
open Tools

(**
   Adds an event listener for a specific event on a DOM Node or an object that 
   has implemented goog.events.EventTarget. A listener can only be added once to
   an object and if it is added again the key for the listener is returned. 

   @param src The node to listen to
   events on.
   @param type Event type.
   @param listener Callback method, or an object with a
   handleEvent function.
   @param opt_capt Whether to fire in capture phase (defaults to
   false).
   @return Unique key for the listener.
*)
let listen (src : (#eventTarget t, #Dom_html.eventTarget t) Union.t) (typ : js_string t) 
    (listener : (unit -> unit)) (capt : bool t) : int =
  Js.Unsafe.fun_call
    (Js.Unsafe.variable "goog.events.listen")
    [|Js.Unsafe.inject src; Js.Unsafe.inject typ; Js.Unsafe.inject listener; 
      Js.Unsafe.inject capt |]

include Event
include BrowserEvent
include EventTarget
