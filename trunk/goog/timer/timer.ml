(**
 * OClosure Project - 2010
 * Class goog.Timer
 *
 * Class for handling timing events.
 *
 * @author : Oran Charles
 * @version 0.1
 * @see 'goog.events.EventTarget'
 *)
open EventTarget

open Js
class type timer = object
  inherit eventTarget
  (** Gets the interval of the timer. *)
  method getInterval : int meth

 (** Sets the interval of the timer.*)
  method setInterval : int -> unit meth

 (** Dispatches the TICK event. This is its own method so subclasses can override. *)
  method dispatchTick : unit meth

 (** Starts the timer. *)
  method start : unit meth
 
 (** Stops the timer. *)
  method stop : unit meth

 (** Disposes of the timer. *)
  method disposeInternal : unit meth

end

let timer : (int  -> timer t) constr =
  Js.Unsafe.variable "goog.Timer"
