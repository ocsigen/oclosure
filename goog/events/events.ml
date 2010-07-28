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

let events = Tools.variable "[oclosure]goog.events[/oclosure]"

let listen (src : (#eventTarget t, #Dom_html.eventTarget t) Union.t) 
    (typ : js_string t) 
    (listener : (unit -> unit) callback) 
    (capt : bool t opt) : int = 
  events##listen (src, typ, listener, capt)
