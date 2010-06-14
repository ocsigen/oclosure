
(** 
    * OClosure Project - 2010
    * Class goog.ui.Bubble
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open AnchoredPosition  (* goog.ui.Popup.AnchoredPosition *)
open Popup  (* goog.ui.Popup *)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open Corner  (* goog.positioning.Corner *)
open AnchoredPosition  (* goog.positioning.AnchoredPosition *)
open AbstractPosition  (* goog.positioning.AbstractPosition *)
open AbsolutePosition  (* goog.positioning.AbsolutePosition *)
open Positioning  (* goog.positioning *)
open Box  (* goog.math.Box *)
open Event  (* goog.events.Event *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)

class external bubble 
inherit component: string(* | element *) -> object(* opt? *) -> domHelper(* opt? *) ->  <
createDom : unit;
attach : element -> unit;
setPinnedCorner : corner -> unit;
setPosition : abstractPosition -> unit;
setTimeout : number -> unit;
setAutoHide : boolean -> unit;
setVisible : boolean -> unit;
isVisible : boolean;
disposeInternal : unit;
getComputedAnchoredPosition : element -> anchoredPosition;
> = "goog.ui.Bubble"
