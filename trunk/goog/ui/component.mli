(**
   * OClosure Project - 2010
   * Class goog.ui.Component
   * 
   * Class that provides the basic implementation for disposable objects. 
   * 
   * @author Cardoso Gabriel
   * @version 0.1
*)
open Events
open Js

class type component = object
  inherit eventTarget
  (** 
     Adds the specified component as the last child of this component. 
     See goog.ui.Component#addChildAt for detailed semantics. 
  *) 
  method addChild : component t -> bool t opt -> unit meth
  (** Decorates the element for the UI component. *)
  method decorate : Dom_html.element t -> unit meth
  (** Returns the child with the given ID, or null if no such child exists. *)
  method getChild : js_string t -> component t opt meth
  (* Returns the child at the given index, or null if the index is out of 
     bounds. *) 
   method getChildAt : int -> component t opt meth  
  (** 
     Renders the component. If a parent element is supplied, it should already
     be in the document and then the component's element will be appended to 
     it. If there is no optional parent element and the element doesn't have 
     a parentNode then it will be appended to the document body. Throws an 
     Error if the component is already rendered.
  *)
  method render : Dom_html.element t opt -> unit meth

  (** Gets the component's element. *)
  method getElement : Dom_html.element t meth

  (** Returns the component's parent, if any. *)
  method getParent : component t opt meth

(**
   Called when the component's element is known to be in the document. Anything
   using document.getElementById etc. should be done at this stage.
   
   If the component contains child components, this call is propagated to its
   children.
*)
  method enterDocument : unit meth
end

val component : component t constr

module Component : sig
  val addChild : #component t -> #component t -> bool t opt -> unit 

  module State : sig
    type state = 	
	ALL | DISABLED | HOVER | ACTIVE | SELECTED | CHECKED | FOCUSED | OPENED
    type state_pre
    val state_of_state_pre : state_pre -> state
    val state_pre_of_state : state -> state_pre
  end 
(**
   Common events fired by components so that event propagation is useful.  Not
   all components are expected to dispatch or listen for all event types.
   Events dispatched before a state transition should be cancelable to prevent
   the corresponding state change.
   @enum string
*)
  module EventType : sig
     (** Dispatched before the component becomes visible. *)
    val _BEFORE_SHOW : js_string t
     (**
	Dispatched after the component becomes visible.
	NOTE(user): For goog.ui.Container, this actually fires before containers
	are shown.  Use goog.ui.Container.EventType.AFTER_SHOW if you want an event
	that fires after a goog.ui.Container is shown.
     *)
    val _SHOW : js_string t

  (** Dispatched before the component becomes hidden. *)
    val _HIDE : js_string t
	
  (** Dispatched before the component becomes disabled. *)
    val _DISABLE : js_string t
	
  (** Dispatched before the component becomes enabled. *)
    val _ENABLE : js_string t
	
  (** Dispatched before the component becomes highlighted. *)
    val _HIGHLIGHT : js_string t
	
  (** Dispatched before the component becomes un-highlighted. *)
    val _UNHIGHLIGHT : js_string t
	
  (** Dispatched before the component becomes activated. *)
    val _ACTIVATE : js_string t
	
  (** Dispatched before the component becomes deactivated. *)
    val _DEACTIVATE : js_string t
	
  (** Dispatched before the component becomes selected. *)
    val _SELECT : js_string t
	
  (** Dispatched before the component becomes un-selected. *)
    val _UNSELECT : js_string t
	
  (** Dispatched before a component becomes checked. *)
    val _CHECK : js_string t
	
  (** Dispatched before a component becomes un-checked. *)
    val _UNCHECK : js_string t
	
  (** Dispatched before a component becomes focused. *)
    val _FOCUS : js_string t
	
  (** Dispatched before a component becomes blurred. *)
    val _BLUR : js_string t
	
  (** Dispatched before a component is opened (expanded). *)
    val _OPEN : js_string t
	
  (** Dispatched before a component is closed (collapsed). *)
    val _CLOSE : js_string t
	
  (** Dispatched after a component is moused over. *)
    val _ENTER : js_string t
	
  (** Dispatched after a component is moused out of. *)
    val _LEAVE : js_string t
	
  (** Dispatched after the user activates the component. *)
    val _ACTION : js_string t
	
  (** Dispatched after the external-facing state of a component is changed. *)
    val _CHANGE : js_string t
  end
end
