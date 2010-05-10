(*
 *  This implements the EventTarget interface as defined by W3C DOM 2/3. 
 *  The main difference from the spec is that the this does not know about event
 * propagation and therefore the flag whether to use bubbling or capturing is 
 * not used. 
 * Another difference is that event objects do not really have to implement 
 * the Event interface. 
 * An object is treated as an event object if it has a type property. 
 * It also allows you to pass a string instead of an event object and in that 
 * case an event like object is created with the type set to the string value.
 * Unless propagation is stopped, events dispatched by an EventTarget bubble to
 * its parent event target, returned by getParentEventTarget.
 * To set the parent event target, call setParentEventTarget or override 
 * getParentEventTarget in a subclass.
 * Subclasses that don't support changing the parent event target should
 * override the setter to throw an error. 
 *
 * Bozman Cagdas - 2010 
 *)
open Disposable

(** handler The function to handle the event. 
    The handler can also be an object that implements the handleEvent method
    which takes the event object as argument. **)
type funct

class external eventTarget inherit disposable : 
  <
  (** Adds an event listener to the event target. 
      The same handler can only be added once per the type.
      Even if you add the same handler multiple times using the same type then
      it will only be called once when the event is dispatched.
      Supported for legacy but use 
      goog.events.listen(src, type, handler) instead. 
  **)

  addEventListener : string -> funct -> bool -> JSOO.obj -> unit;
 (** Dispatches an event (or event like object) and calls all listeners
     listening for events of this type. The type of the event is decided by the
     type property on the event object.
     
     If any of the listeners returns false OR calls preventDefault then this
     function will return false.  If one of the capture listeners calls
     stopPropagation, then the bubble listeners won't fire. **)
 dispatchEvent : string -> bool;

 (** Returns the parent of this event target to use for bubbling. **)
 getParentEventTarget : unit -> eventTarget;

 (** Removes an event listener from the event target. The handler must be the
     same object as the one added. If the handler has not been added then
     nothing is done.**)
 removeEventListener : string -> funct -> bool -> JSOO.obj -> unit;
 
 (** Sets the parent of this event target to use for bubbling. **)
 setParentEventTarget : eventTarget -> unit;

 > = "goog.events.EventTarget"
