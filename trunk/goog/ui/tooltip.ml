(** 
    * OClosure Project - 2010 
    * Class goog.ui.Tooltip
    *
    * Tooltip widget. Can be attached to one or more elements 
    * and is shown, with a slight delay, when the the cursor is over 
    * the element or the element gains focus.
    *
    * @author Esther Baruk
    * @version 0.1
    * @see 'goog.dom.DomHelper'
*)
open Goog_dom

type element = Dom.element
(** goog.ui.Tooltip.State = {
    INACTIVE: 0,
    WAITING_TO_SHOW: 1,
    SHOWING: 2,
    WAITING_TO_HIDE: 3,
    UPDATING: 4 
    // waiting to show new hovercard while old one still showing.
  method } meth
*)
type state = int
type coordinate (*goog.math.Coordinate*)
type browserEvent (*goog.events.BrowserEvent*)
(** goog.positioning.Corner:
    TOP_LEFT: 0,
    TOP_RIGHT: 2,
    BOTTOM_LEFT: 1,
    BOTTOM_RIGHT: 3,
    TOP_START: 4,
    TOP_END: 6,
    BOTTOM_START: 5,
    BOTTOM_END: 7 **)
type corner = int 

open Js
class type tooltip = object
    (** Returns the dom helper that is being used on this component.*)
  method getDomHelper : unit -> domHelper meth
      (** Attach to element. Tooltip will be displayed when the cursor is 
         over the element or when the element has been active for a 
         few milliseconds.*)
  method attach : element -> unit meth

    (** Detach from element(s).*)
  method detach : element -> unit meth

    (** Sets delay in milliseconds before tooltip is displayed for an element.*)
  method setshowDelayMs : number -> unit meth

    (** Returns the delay in milliseconds before tooltip is displayed for an
       * element.*)
  method getShowDelayMs : unit -> number meth

    (** Sets delay in milliseconds before tooltip is hidden once the cursor 
       * leaves the element.*)
  method setHideDelayMs : number -> unit meth

    (** Returns the delay in milliseconds before tooltip is hidden once the
       * cursor leaves the element.*)
  method getHideDelayMs : unit -> number meth

    (** Sets tooltip message as plain text.*)
  method setText : js_string t -> unit meth

    (** Sets tooltip message as HTML markup.*)
  method setHtml : js_string t -> unit meth

    (** Sets tooltip element.*)
  method setElement : element -> unit meth

    (** Returns the tooltip message as plain text.*)
  method getText : unit -> js_string t meth

    (** The tooltip message as HTML.*)
  method getHtml : unit -> js_string t meth

    (** Returns current state of tooltip.*)
  method getState : unit -> state meth

    (** Sets whether tooltip requires the mouse to have moved or 
       * the anchor receive focus before the tooltip will be shown.*)  
  method setRequireInteraction : bool -> unit meth

    (** Returns true if the coord is in the tooltip.*)
  method isCoordinateInTooltip : coordinate -> bool meth

    (** Called before the popup is shown.*)
  method onBeforeShow : unit -> bool meth

    (** Called by timer from mouse over handler. Shows tooltip if 
       * cursor is still over the same element.*)
  method maybeShow : element (*-> abstractPosition (optional argument)*) -> unit meth

    (** Shows tooltip for a specific element.*)
  method showForElement : element (*-> abstractPosition (optional argument)*)-> unit meth

    (** Called by timer from mouse out handler. Hides tooltip if cursor 
       * is still outside element and tooltip, or if a child of tooltip has the
       * focus.*)
  method maybeHide : element -> unit meth

    (** Returns whether tooltip element contains an active child tooltip,
       * and should thus not be hidden. When the child tooltip is hidden, it
       * will check if the parent should be hidden too.*)
  method hasActiveChild : unit -> bool meth

    (** Handler for mouse over events.*)
  method handleMouseOver : browserEvent -> unit meth

    (** Find anchor containing the given element, if any.*)
  method getAnchorFromElement : element -> element meth

    (** Handler for mouse move events.*)
  method handleMouseMove : browserEvent -> unit meth

    (** Handler for focus events.*)
  method handleFocus : browserEvent -> unit meth

    (** Handler for mouse out and blur events.*)
  method handleMouseOutAndBlur : browserEvent -> unit meth

    (** Handler for mouse over events for the tooltip element.*)
  method handleTooltipMouseOver : browserEvent -> unit meth

    (** Handler for mouse out events for the tooltip element.*)
  method handleTooltipMouseOut : browserEvent -> unit meth

    (** Helper method, starts timer that calls maybeShow. Parameters
       * are passed to the maybeShow method.*)
  method startShowTimer : element (*-> abstractPosition (optional argument)*) -> unit meth

    (** Helper method called to clear the show timer.*)
  method clearShowTimer : unit -> unit meth

    (** Destroys widget and removes all event listeners.*)
  method disposeInternal : unit -> unit meth
end

let tooltip : (js_string t -> js_string t -> tooltip t) constr =
  Js.Unsafe.variable "goog.ui.Tooltip"
