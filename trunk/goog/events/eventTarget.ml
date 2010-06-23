(** 
    * OClosure Project - 2010
    * Class goog.asserts.AssertionError
    *
    * This implements the EventTarget interface as defined by W3C DOM 2/3. 
    * The main difference from the spec is that
    * the this does not know about event
    * propagation and therefore the flag whether to use bubbling or capturing 
    * is not used. 
    * Another difference is that event objects do not really have to implement 
    * the Event interface. 
    * An object is treated as an event object if it has a type property. 
    * It also allows you to pass a js_string t instead of an event object and 
    * in that case an event like object is created with the type set 
    * to the js_string t value.
    * Unless propagation is stopped, events dispatched by 
    * an EventTarget bubble to
    * its parent event target, returned by getParentEventTarget.
    * To set the parent event target, call setParentEventTarget or override 
    * getParentEventTarget in a subclass.
    * Subclasses that don't support changing the parent event target should
    * override the setter to throw an error. 
    *
    * @author Bozman Cagdas 
    * @version 0.1
    * @see 'goog.disposable.Disposable'
*)
open Disposable

(** handler The function to handle the event. 
    The handler can also be an object that implements the handleEvent method
    which takes the event object as argument. **)
type funct
type event


open Js
class type eventTarget = object
  inherit disposable
  (** Adds an event listener to the event target. 
      The same handler can only be added once per the type.
      Even if you add the same handler multiple times using the same type then
      it will only be called once when the event is dispatched.
      Supported for legacy but use 
      goog.events.listen(src, type, handler) instead. *)
  method addEventListener : js_string t -> ( Event.event t -> bool t) -> unit meth

 (** Dispatches an event (or event like object) and calls all listeners
     listening for events of this type. The type of the event is decided by the
     type property on the event object.
     
     If any of the listeners returns false OR calls preventDefault then this
     function will return false.  If one of the capture listeners calls
     stopPropagation, then the bubble listeners won't fire. *)
  method dispatchEvent : js_string t -> bool meth

 (** Returns the parent of this event target to use for bubbling. *)
  method getParentEventTarget : eventTarget t meth

 (** Sets the parent of this event target to use for bubbling. *)
  method setParentEventTarget : eventTarget t -> unit meth
end

let eventTarget : eventTarget t constr =
  Js.Unsafe.variable "goog.events.EventTarget"
