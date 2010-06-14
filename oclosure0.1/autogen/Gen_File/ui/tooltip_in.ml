
(** 
    * OClosure Project - 2010
    * Class goog.ui.Tooltip.State, goog.ui.Tooltip.ElementTooltipPosition, goog.ui.Tooltip.CursorTooltipPosition, goog.ui.Tooltip
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open PopupBase  (* goog.ui.PopupBase *)
open Popup  (* goog.ui.Popup *)
open Style  (* goog.style *)
open Set  (* goog.structs.Set *)
open ViewportPosition  (* goog.positioning.ViewportPosition *)
open OverflowStatus  (* goog.positioning.OverflowStatus *)
open Overflow  (* goog.positioning.Overflow *)
open Corner  (* goog.positioning.Corner *)
open AnchoredPosition  (* goog.positioning.AnchoredPosition *)
open Positioning  (* goog.positioning *)
open Coordinate  (* goog.math.Coordinate *)
open Box  (* goog.math.Box *)
open EventType  (* goog.events.EventType *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)
open Timer  (* goog.Timer *)

class external tooltip 
inherit popup: element(* | string(* opt? *) *) -> string(* opt? *) -> domHelper(* opt? *) ->  <
getDomHelper : domHelper;
attach : element(* | string *) -> unit;
detach : element(* | string(* opt? *) *) -> unit;
setShowDelayMs : number -> unit;
getShowDelayMs : number;
setHideDelayMs : number -> unit;
getHideDelayMs : number;
setText : string -> unit;
setHtml : string -> unit;
setElement : element -> unit;
getText : string;
getHtml : string;
getState : state;
setRequireInteraction : boolean -> unit;
isCoordinateInTooltip : coordinate -> boolean;
onBeforeShow : boolean;
maybeShow : element -> abstractPosition(* opt? *) -> unit;
showForElement : element -> abstractPosition(* opt? *) -> unit;
maybeHide : element -> unit;
hasActiveChild : boolean;
handleMouseOver : browserEvent -> unit;
getAnchorFromElement : element -> element;
handleMouseMove : browserEvent -> unit;
handleFocus : browserEvent -> unit;
handleMouseOutAndBlur : browserEvent -> unit;
handleTooltipMouseOver : browserEvent -> unit;
handleTooltipMouseOut : browserEvent -> unit;
startShowTimer : element -> abstractPosition(* opt? *) -> unit;
clearShowTimer : unit;
disposeInternal : unit;
> = "goog.ui.Tooltip"

class external cursorTooltipPosition 
inherit viewportPosition: number(* | coordinate(* opt? *) *) -> number(* opt? *) ->  <
reposition : element -> corner -> box(* opt? *) -> unit;
> = "goog.ui.Tooltip.CursorTooltipPosition"

class external elementTooltipPosition 
inherit anchoredPosition: element ->  <
reposition : element -> corner -> box(* opt? *) -> unit;
> = "goog.ui.Tooltip.ElementTooltipPosition"
