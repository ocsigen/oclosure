open Js
open EventTarget
open Tools

include KeyHandler
include EventHandler
include EventType
include Event
include BrowserEvent
include EventTarget
include KeyEvent

let listen (src : (#eventTarget t, #Dom_html.eventTarget t) Union.t) (typ : js_string t) 
    (listener : (unit -> unit) callback) (capt : bool t opt) : int =
  Js.Unsafe.fun_call
    (Js.Unsafe.variable "goog.events.listen")
    [|Js.Unsafe.inject src; Js.Unsafe.inject typ; Js.Unsafe.inject listener; 
      Js.Unsafe.inject capt |]

