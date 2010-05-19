
(** 
    * OClosure Project - 2010
    * Class goog.ui.AdvancedTooltip
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Tooltip  (* goog.ui.Tooltip *)
open Coordinate  (* goog.math.Coordinate *)

class external advancedTooltip 
inherit tooltip: element(* | string(* opt? *) *) -> string(* opt? *) -> domHelper(* opt? *) ->  <
setHotSpotPadding : box(* opt? *) -> unit;
getHotSpotPadding : box;
setCursorTracking : boolean -> unit;
getCursorTracking : boolean;
setCursorTrackingHideDelayMs : number -> unit;
getCursorTrackingHideDelayMs : number;
isMouseInTooltip : boolean;
isCoordinateInTooltip : coordinate -> boolean;
maybeHide : element -> unit;
handleMouseMove : browserEvent -> unit;
handleTooltipMouseOver : browserEvent -> unit;
getHideDelayMs : number;
resetHotSpot : unit;
> = "goog.ui.AdvancedTooltip"
