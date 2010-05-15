(** OClosure Project - 2010 
    * Class goog.ui.Tooltip
    *
    * Tooltip widget. Can be attached to one or more elements 
    * and is shown, with a slight delay, when the the cursor is over 
    * the element or the element gains focus.
    *
    * @author Esther Baruk
    * @version 0.1
*)

type domHelper = JSOO.obj
type number = JSOO.obj
type element = JSOO.obj
(** goog.ui.Tooltip.State = {
    INACTIVE: 0,
    WAITING_TO_SHOW: 1,
    SHOWING: 2,
    WAITING_TO_HIDE: 3,
    UPDATING: 4 
    // waiting to show new hovercard while old one still showing.
    };
*)
type state = int
type coordinate = JSOO.obj (*goog.math.Coordinate*)
type browserEvent = JSOO.obj (*goog.events.BrowserEvent*)
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

class external tooltip : string -> string ->
  <
    (** Returns the dom helper that is being used on this component.*)
    getDomHelper : unit -> domHelper;
  (*
    (** Attach to element. Tooltip will be displayed when the cursor is 
       * over the element or when the element has been active for a 
       * few milliseconds.*)
    attach : element -> unit;

    (** Detach from element(s).*)
    detach : element -> unit; (*element can also be string*)

    (** Sets delay in milliseconds before tooltip is displayed for an element.*)
    setshowDelayMs : number -> unit;

    (** Returns the delay in milliseconds before tooltip is displayed for an
       * element.*)
    getShowDelayMs : unit -> number;

    (** Sets delay in milliseconds before tooltip is hidden once the cursor 
       * leaves the element.*)
    setHideDelayMs : number -> unit;

    (** Returns the delay in milliseconds before tooltip is hidden once the
       * cursor leaves the element.*)
    getHideDelayMs : unit -> number;

    (** Sets tooltip message as plain text.*)
    setText : string -> unit;

    (** Sets tooltip message as HTML markup.*)
    setHtml : string -> unit;

    (** Sets tooltip element.*)
    setElement : element -> unit;

    (** Returns the tooltip message as plain text.*)
    getText : unit -> string;

    (** The tooltip message as HTML.*)
    getHtml : unit -> string;

    (** Returns current state of tooltip.*)
    getState : unit -> state;

    (** Sets whether tooltip requires the mouse to have moved or 
       * the anchor receive focus before the tooltip will be shown.*)  
    setRequireInteraction : bool -> unit;

    (** Returns true if the coord is in the tooltip.*)
    isCoordinateInTooltip : coordinate -> bool;

    (** Called before the popup is shown.*)
    onBeforeShow : unit -> bool;

    (** Called by timer from mouse over handler. Shows tooltip if 
       * cursor is still over the same element.*)
    maybeShow : element (*-> abstractPosition (optional argument)*) -> unit;

    (** Shows tooltip for a specific element.*)
    showForElement : element (*-> abstractPosition (optional argument)*)-> unit;

    (** Called by timer from mouse out handler. Hides tooltip if cursor 
       * is still outside element and tooltip, or if a child of tooltip has the
       * focus.*)
    maybeHide : element -> unit;

    (** Returns whether tooltip element contains an active child tooltip,
       * and should thus not be hidden. When the child tooltip is hidden, it
       * will check if the parent should be hidden too.*)
    hasActiveChild : unit -> bool;

    (** Handler for mouse over events.*)
    handleMouseOver : browserEvent -> unit;

    (** Find anchor containing the given element, if any.*)
    getAnchorFromElement : element -> element;

    (** Handler for mouse move events.*)
    handleMouseMove : browserEvent -> unit;

    (** Handler for focus events.*)
    handleFocus : browserEvent -> unit;

    (** Handler for mouse out and blur events.*)
    handleMouseOutAndBlur : browserEvent -> unit;

    (** Handler for mouse over events for the tooltip element.*)
    handleTooltipMouseOver : browserEvent -> unit;

    (** Handler for mouse out events for the tooltip element.*)
    handleTooltipMouseOut : browserEvent -> unit;

    (** Helper method, starts timer that calls maybeShow. Parameters
       * are passed to the maybeShow method.*)
    startShowTimer : element (*-> abstractPosition (optional argument)*) -> unit;

    (** Helper method called to clear the show timer.*)
    clearShowTimer : unit -> unit;

    (** Destroys widget and removes all event listeners.*)
    disposeInternal : unit -> unit;*)
  > = "goog.ui.Tooltip"
