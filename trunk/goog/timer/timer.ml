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
  method getInterval : unit -> float meth

 (** Sets the interval of the timer.*)
  method setInterval : float -> unit meth

 (** Dispatches the TICK event. This is its own method so subclasses can override. *)
  method dispatchTick : unit -> unit meth

 (** Starts the timer. *)
  method start : unit -> unit meth
 
 (** Stops the timer. *)
  method stop : unit -> unit meth

 (** Disposes of the timer. *)
  method disposeInternal : unit -> unit meth

end

let timer : (float  -> timer t) constr =
  Js.Unsafe.variable "goog.Timer"
