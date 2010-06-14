
(** 
    * OClosure Project - 2010
    * Class goog.positioning.OverflowStatus, goog.positioning.Overflow, goog.positioning.CornerBit, goog.positioning.Corner, goog.positioning
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Style  (* goog.style *)
open Size  (* goog.math.Size *)
open Coordinate  (* goog.math.Coordinate *)
open Box  (* goog.math.Box *)
open TagName  (* goog.dom.TagName *)
open Dom  (* goog.dom *)

class external corner :  <
positionAtAnchor : element -> corner -> element -> corner -> coordinate(* opt? *) -> box(* opt? *) -> number(* opt? *) -> size(* opt? *) -> overflowStatus;
positionAtCoordinate : coordinate -> element -> corner -> box(* opt? *) -> box(* opt? *) -> number(* opt? *) -> size(* opt? *) -> overflowStatus;
adjustForViewport : coordinate -> size -> box -> number -> overflowStatus;
getEffectiveCorner : element -> corner -> corner;
flipCornerHorizontal : corner -> corner;
flipCornerVertical : corner -> corner;
flipCorner : corner -> corner;
> = "goog.positioning.Corner"
