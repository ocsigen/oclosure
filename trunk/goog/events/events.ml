open Js
open EventTarget

type key

(**
   Adds an event listener for a specific event on a DOM Node or an object that 
   has implemented goog.events.EventTarget. A listener can only be added once to
   an object and if it is added again the key for the listener is returned. 

   @param {EventTarget.eventTarget t} src The node to listen to
   events on.
   @param {js_string t} type Event type.
   @param {unit -> unit} listener Callback method, or an object with a
   handleEvent function.
   @param {bool t opt} opt_capt Whether to fire in capture phase (defaults to
   false).
   @return {key} Unique key for the listener.
*)
let listen (src : #eventTarget t) (typ : js_string t) 
    (listener : (unit -> unit)) (capt : bool t) : key =
  Js.Unsafe.fun_call
    (Js.Unsafe.variable "goog.events.listen")
    [|Js.Unsafe.inject src; Js.Unsafe.inject typ; Js.Unsafe.inject listener; 
      Js.Unsafe.inject capt |]
