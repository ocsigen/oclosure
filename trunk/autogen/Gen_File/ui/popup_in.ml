
(** 
    * OClosure Project - 2010
    * Class goog.ui.Popup.ViewPortPosition, goog.ui.Popup.ViewPortClientPosition, goog.ui.Popup.Overflow, goog.ui.Popup.Corner, goog.ui.Popup.ClientPosition, goog.ui.Popup.AnchoredViewPortPosition, goog.ui.Popup.AnchoredPosition, goog.ui.Popup.AbsolutePosition, goog.ui.Popup
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open PopupBase  (* goog.ui.PopupBase *)
open Style  (* goog.style *)
open ViewportPosition  (* goog.positioning.ViewportPosition *)
open ViewportClientPosition  (* goog.positioning.ViewportClientPosition *)
open OverflowStatus  (* goog.positioning.OverflowStatus *)
open Overflow  (* goog.positioning.Overflow *)
open Corner  (* goog.positioning.Corner *)
open ClientPosition  (* goog.positioning.ClientPosition *)
open AnchoredViewportPosition  (* goog.positioning.AnchoredViewportPosition *)
open AnchoredPosition  (* goog.positioning.AnchoredPosition *)
open AbsolutePosition  (* goog.positioning.AbsolutePosition *)
open Positioning  (* goog.positioning *)
open Box  (* goog.math.Box *)

class external popup 
inherit popupBase: element(* opt? *) -> abstractPosition(* opt? *) ->  <
getPinnedCorner : corner;
setPinnedCorner : corner -> unit;
getPosition : abstractPosition;
setPosition : abstractPosition -> unit;
getMargin : box(* opt? *);
setMargin : box(* | number| null *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> unit;
reposition : unit;
positionPopup : element -> corner -> element -> corner -> coordinate(* opt? *) -> box(* opt? *) -> number(* opt? *) -> boolean;
positionAtCoordinate : coordinate -> element -> corner -> box(* opt? *) -> boolean;
> = "goog.ui.Popup"

class external anchoredPosition 
inherit abstractPosition: element -> corner ->  <
> = "goog.ui.Popup.AnchoredPosition"

class external anchoredViewPortPosition 
inherit anchoredPosition: element -> corner -> boolean(* opt? *) ->  <
> = "goog.ui.Popup.AnchoredViewPortPosition"

class external absolutePosition 
inherit abstractPosition: number(* | coordinate(* opt? *) *) -> number(* opt? *) ->  <
> = "goog.ui.Popup.AbsolutePosition"

class external viewPortPosition 
inherit absolutePosition: number(* | coordinate(* opt? *) *) -> number(* opt? *) ->  <
> = "goog.ui.Popup.ViewPortPosition"

class external clientPosition 
inherit absolutePosition: number(* | coordinate(* opt? *) *) -> number(* opt? *) ->  <
> = "goog.ui.Popup.ClientPosition"

class external viewPortClientPosition 
inherit clientPosition: number(* | coordinate(* opt? *) *) -> number(* opt? *) ->  <
> = "goog.ui.Popup.ViewPortClientPosition"
