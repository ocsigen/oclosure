(* OClosure - 2010 *
 * Esther Baruk    *
 * goog.ui.Tooltip *)
type domHelper = JSOO.obj
type number = JSOO.obj
type element = JSOO.obj
type state = JSOO.obj (*goog.ui.Tooltip.State*)
type coordinate = JSOO.obj (*goog.math.Coordinate*)
type browserEvent = JSOO.obj (*goog.events.BrowserEvent*)
type corner = JSOO.obj (*goog.positioning.Corner*)

class external tooltip : string -> string ->
  <
  getDomHelper : unit -> domHelper;
  (*attach : element -> unit;
  detach : unit -> unit; (*optional argument of type element*)
  setshowDelayMs : number -> unit;
  getShowDelayMs : unit -> number;
  setHideDelayMs : number -> unit;
  getHideDelayMs : unit -> number;
  setText : string -> unit;
  setHtml : string -> unit;
  setElement : element -> unit;
  getText : unit -> string;
  getHtml : unit -> string;
  getState : unit -> state;
  setRequireInteraction : bool -> unit;
  isCoordinateInTooltip : coordinate -> bool;
  onBeforeShow : unit -> bool;
  maybeShow : element (*-> abstractPosition (optional argument)*) -> unit;
  showForElement : element (*-> abstractPosition (optional argument)*)-> unit;
  maybeHide : element -> unit;
  hasActiveChild : unit -> bool;
  handleMouseOver : browserEvent -> unit;
  getAnchorFromElement : element -> element;
  handleMouseMove : browserEvent -> unit;
  handleFocus : browserEvent -> unit;
  handleMouseOutAndBlur : browserEvent -> unit;
  handleTooltipMouseOver : browserEvent -> unit;
  handleTooltipMouseOut : browserEvent -> unit;
  startShowTimer : element (*-> abstractPosition (optional argument)*) -> unit;
  clearShowTimer : unit -> unit;
  disposeInternal : unit -> unit;
  (* reposition is defined twice*)
  reposition : element -> corner (*-> box (optional argument)*) -> unit;*)
 > = "goog.ui.Tooltip"
