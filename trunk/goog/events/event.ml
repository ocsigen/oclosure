(** 
    * OClosure Project - 2010
    * Class goog.events.Event
    *
    * A base class for event objects, so that they can support 
    * preventDefault and stopPropagation.
    *
    * @author : Oran Charles
    * @version 0.1
    * @see 'goog.Disposable'
*)
open Disposable

(** object *)
type target = Dom.element

open Js
class type event = object
  inherit disposable
  (** @inheritDoc *)
  method disposeInternal : unit meth

  (** Stops event propagation. *)
  method stopPropagation : unit meth

  (** Prevents the default action, for example a link redirecting to a url.*)
  method preventDefault : unit meth

end

let event : (js_string t -> target -> event t) constr =
  Js.Unsafe.variable "goog.events.Event"
