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

open Positioning.AbstractPosition

type element = Dom_html.element
type state =
  | INACTIVE
  | WAITING_TO_SHOW
  | SHOWING
  | WAITING_TO_HIDE
  | UPDATING
type coordinate = Math.Coordinate.coordinate
type browserEvent = Events.BrowserEvent.browserEvent
type corner = 
    TOP_LEFT 
  | BOTTOM_LEFT
  | TOP_RIGHT 
  | BOTTOM_RIGHT
  | TOP_START
  | TOP_END
  | BOTTOM_START
  | BOTTOM_END

open Js
class type tooltip = object
    (** Returns the dom helper that is being used on this component.*)
  method getDomHelper : domHelper meth
      (** Attach to element. Tooltip will be displayed when the cursor is 
         over the element or when the element has been active for a 
         few milliseconds.*)
  method attach : element -> unit meth

    (** Detach from element(s).*)
  method detach : element -> unit meth

    (** Sets delay in milliseconds before tooltip is displayed for an element.*)
  method setshowDelayMs : int -> unit meth

    (** Returns the delay in milliseconds before tooltip is displayed for an
       * element.*)
  method getShowDelayMs : int meth

    (** Sets delay in milliseconds before tooltip is hidden once the cursor 
       * leaves the element.*)
  method setHideDelayMs : int -> unit meth

    (** Returns the delay in milliseconds before tooltip is hidden once the
       * cursor leaves the element.*)
  method getHideDelayMs : int meth

    (** Sets tooltip message as plain text.*)
  method setText : js_string t -> unit meth

    (** Sets tooltip message as HTML markup.*)
  method setHtml : js_string t -> unit meth

    (** Sets tooltip element.*)
  method setElement : element -> unit meth

    (** Returns the tooltip message as plain text.*)
  method getText : js_string t meth

    (** The tooltip message as HTML.*)
  method getHtml : js_string t meth

    (** Returns current state of tooltip.*)
  method getState : state t meth

    (** Sets whether tooltip requires the mouse to have moved or 
       * the anchor receive focus before the tooltip will be shown.*)  
  method setRequireInteraction : bool t -> unit meth

    (** Returns true if the coord is in the tooltip.*)
  method isCoordinateInTooltip : coordinate t -> bool t meth

    (** Called before the popu p is shown.*)
  method onBeforeShow : bool t meth

    (** Called by timer from mouse over handler. Shows tooltip if 
       * cursor is still over the same element.*)
  method maybeShow : element t -> abstractPosition t opt -> unit meth

    (** Shows tooltip for a specific element.*)
  method showForElement : element t -> abstractPosition t opt -> unit meth

    (** Called by timer from mouse out handler. Hides tooltip if cursor 
       * is still outside element and tooltip, or if a child of tooltip has the
       * focus.*)
  method maybeHide : element t -> unit meth

    (** Returns whether tooltip element contains an active child tooltip,
       * and should thus not be hidden. When the child tooltip is hidden, it
       * will check if the parent should be hidden too.*)
  method hasActiveChild : bool meth

    (** Handler for mouse over events.*)
  method handleMouseOver : browserEvent -> unit meth

    (** Find anchor containing the given element, if any.*)
  method getAnchorFromElement : element t -> element t meth

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
  method startShowTimer : element t -> abstractPosition t opt -> unit meth

    (** Helper method called to clear the show timer.*)
  method clearShowTimer : unit meth

    (** Destroys widget and removes all event listeners.*)
  method disposeInternal : unit meth

(** Css class name for tooltip *)
  method className : js_string t prop
end

let tooltip : (Tools.element_or_string opt -> js_string t opt -> Goog_dom.domHelper t opt -> tooltip t) constr =
  Js.Unsafe.variable "goog.ui.Tooltip"
