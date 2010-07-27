(**
   OClosure Project - 2010
   Class goog.events.EventHandler
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type eventHandler = object
  inherit Disposable.disposable

  method disposeInternal : unit meth

  method handleEvent : Event.event t -> unit meth

  method listen : 
      (EventTarget.eventTarget t, Dom_html.eventTarget t) Tools.Union.t 
      -> (js_string t, js_string t js_array t) Tools.Union.t
      -> (unit -> unit) opt -> bool t opt -> eventHandler t meth

  method listenOnce : 
      (EventTarget.eventTarget t, Dom_html.eventTarget t) Tools.Union.t 
      -> (js_string t, js_string t js_array t) Tools.Union.t
      -> (unit -> unit) opt -> bool t opt -> eventHandler t meth

  method listenWithWrapper : 
      (EventTarget.eventTarget t, Dom_html.eventTarget t) Tools.Union.t 
      -> eventWrapper t -> (unit -> unit) opt -> bool t opt 
      -> eventHandler t meth

  method removeAll : unit meth

  method unlisten : 
      (EventTarget.eventTarget t, Dom_html.eventTarget t) Tools.Union.t 
      -> (js_string t, js_string t js_array t) Tools.Union.t
      -> (unit -> unit) opt -> bool t opt -> eventHandler t meth

  method unlistenWithWrapper : 
      (EventTarget.eventTarget t, Dom_html.eventTarget t) Tools.Union.t 
      -> eventWrapper t -> (unit -> unit) opt -> bool t opt 
      -> eventHandler t meth
end

and eventWrapper = object

  method listen : 
      (EventTarget.eventTarget t, Dom_html.eventTarget t) Tools.Union.t 
      -> (unit -> unit) opt -> bool t opt -> eventHandler t opt -> unit meth

  method unlisten : 
      (EventTarget.eventTarget t, Dom_html.eventTarget t) Tools.Union.t 
      -> (unit -> unit) opt -> bool t opt -> eventHandler t opt-> unit meth
end

let eventHandler : (eventHandler t) constr = 
  Js.Unsafe.variable "goog.events.EventHandler"
