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
  (** Adds the specified component as the last child of this component. 
    * See goog.ui.Component#addChildAt for detailed semantics. 
    *) 
  method addChild : component t -> bool t -> unit meth
  (** Decorates the element for the UI component. *)
  method decorate : Dom_html.element t -> unit meth
  (** Returns the child with the given ID, or null if no such child exists. *)
  method getChild : js_string t -> component meth
  (* Returns the child at the given index, or null if the index is out of 
     bounds. *) 
   method getChildAt : Js.number t -> component opt meth  
  (** Renders the component. If a parent element is supplied, it should already
     * be in the document and then the component's element will be appended to 
     * it. If there is no optional parent element and the element doesn't have 
     * a parentNode then it will be appended to the document body. Throws an 
     * Error if the component is already rendered.
  *)
  method render : Dom_html.element t -> unit meth
end

let component : component t constr =
  Js.Unsafe.variable "goog.ui.Component"

module Component = struct
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
     let before_show = Js.string "beforeshow"
     (**
	* Dispatched after the component becomes visible.
	* NOTE(user): For goog.ui.Container, this actually fires before containers
	* are shown.  Use goog.ui.Container.EventType.AFTER_SHOW if you want an event
	* that fires after a goog.ui.Container is shown.
     *)
  let show = Js.string "show"

  (** Dispatched before the component becomes hidden. *)
  let hide = Js.string "hide"

  (** Dispatched before the component becomes disabled. *)
  let disable = Js.string "disable"

  (** Dispatched before the component becomes enabled. *)
  let enable = Js.string "enable"

  (** Dispatched before the component becomes highlighted. *)
  let highlight = Js.string "highlight"

  (** Dispatched before the component becomes un-highlighted. *)
  let unhighlight = Js.string "unhighlight"

  (** Dispatched before the component becomes activated. *)
  let activate = Js.string "activate"

  (** Dispatched before the component becomes deactivated. *)
  let deactivate = Js.string "deactivate"

  (** Dispatched before the component becomes selected. *)
  let select = Js.string "select"

  (** Dispatched before the component becomes un-selected. *)
  let unselect = Js.string "unselect"

  (** Dispatched before a component becomes checked. *)
  let check = Js.string "check"

  (** Dispatched before a component becomes un-checked. *)
  let uncheck = Js.string "uncheck"

  (** Dispatched before a component becomes focused. *)
  let focus = Js.string "focus"

  (** Dispatched before a component becomes blurred. *)
  let blur = Js.string "blur"

  (** Dispatched before a component is opened (expanded). *)
  let open_ = Js.string "open"

  (** Dispatched before a component is closed (collapsed). *)
  let close = Js.string "close"

  (** Dispatched after a component is moused over. *)
  let enter = Js.string "enter"

  (** Dispatched after a component is moused out of. *)
  let leave = Js.string "leave"

  (** Dispatched after the user activates the component. *)
  let action = Js.string "action"

  (** Dispatched after the external-facing state of a component is changed. *)
  let change = Js.string "change"
   end)
end
