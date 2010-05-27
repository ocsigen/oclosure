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

class external timer inherit eventTarget : float -> 
<
  (** Gets the interval of the timer. *)
  getInterval : unit -> float;

 (** Sets the interval of the timer.*)
 setInterval : float -> unit;

 (** Dispatches the TICK event. This is its own method so subclasses can override. *)
 dispatchTick : unit -> unit;

 (** Starts the timer. *)
 start : unit -> unit;
 
 (** Stops the timer. *)
 stop : unit -> unit;

 (** Disposes of the timer. *)
 disposeInternal : unit -> unit;

> = "goog.Timer"
