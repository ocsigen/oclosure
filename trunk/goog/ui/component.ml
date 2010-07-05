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

let component : component t constr =
  Js.Unsafe.variable "goog.ui.Component"

module Component = struct
  let addChild (c : #component t) child (b : bool t opt) = 
    c##addChild((child : #component t :> component t), b)
(**
   * Common events fired by components so that event propagation is useful.  Not
   * all components are expected to dispatch or listen for all event types.
   * Events dispatched before a state transition should be cancelable to prevent
   * the corresponding state change.
   * @enum string
*)
module EventType =
  (struct 
     (** Dispatched before the component becomes visible. *)
     let _BEFORE_SHOW = Js.string "beforeshow"
     (**
	* Dispatched after the component becomes visible.
	* NOTE(user): For goog.ui.Container, this actually fires before containers
	* are shown.  Use goog.ui.Container.EventType.AFTER_SHOW if you want an event
	* that fires after a goog.ui.Container is shown.
     *)
  let _SHOW = Js.string "show"

  (** Dispatched before the component becomes hidden. *)
  let _HIDE = Js.string "hide"

  (** Dispatched before the component becomes disabled. *)
  let _DISABLE = Js.string "disable"

  (** Dispatched before the component becomes enabled. *)
  let _ENABLE = Js.string "enable"

  (** Dispatched before the component becomes highlighted. *)
  let _HIGHLIGHT = Js.string "highlight"

  (** Dispatched before the component becomes un-highlighted. *)
  let _UNHIGHLIGHT = Js.string "unhighlight"

  (** Dispatched before the component becomes activated. *)
  let _ACTIVATE = Js.string "activate"

  (** Dispatched before the component becomes deactivated. *)
  let _DEACTIVATE = Js.string "deactivate"

  (** Dispatched before the component becomes selected. *)
  let _SELECT = Js.string "select"

  (** Dispatched before the component becomes un-selected. *)
  let _UNSELECT = Js.string "unselect"

  (** Dispatched before a component becomes checked. *)
  let _CHECK = Js.string "check"

  (** Dispatched before a component becomes un-checked. *)
  let _UNCHECK = Js.string "uncheck"

  (** Dispatched before a component becomes focused. *)
  let _FOCUS = Js.string "focus"

  (** Dispatched before a component becomes blurred. *)
  let _BLUR = Js.string "blur"

  (** Dispatched before a component is opened (expanded). *)
  let _OPEN_ = Js.string "open"

  (** Dispatched before a component is closed (collapsed). *)
  let _CLOSE = Js.string "close"

  (** Dispatched after a component is moused over. *)
  let _ENTER = Js.string "enter"

  (** Dispatched after a component is moused out of. *)
  let _LEAVE = Js.string "leave"

  (** Dispatched after the user activates the component. *)
  let _ACTION = Js.string "action"

  (** Dispatched after the external-facing state of a component is changed. *)
  let _CHANGE = Js.string "change"
   end)
end
