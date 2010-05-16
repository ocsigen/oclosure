(**
 * OClosure Project - 2010
 * Class goog.events.Event
 *
 * A base class for event objects, so that they can support preventDefault and stopPropagation.
 *
 * @author : Oran Charles
 * @version 0.1
 * @see 'goog.Disposable'
 *)
open Disposable

(** JSOO.obj *)
type target = JSOO.obj

class external event inherit disposable : string -> target ->
<
  (** @inheritDoc *)
  disposeInternal : unit -> unit;

  (** Stops event propagation. *)
  stopPropagation : unit -> unit;

  (** Prevents the default action, for example a link redirecting to a url.*)
  preventDefault : unit -> unit;

> = "goog.events.Event"
