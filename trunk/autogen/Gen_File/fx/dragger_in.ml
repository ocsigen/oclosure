
(** 
    * OClosure Project - 2010
    * Class goog.fx.Dragger.EventType, goog.fx.Dragger, goog.fx.DragEvent
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Rect  (* goog.math.Rect *)
open Coordinate  (* goog.math.Coordinate *)
open EventType  (* goog.events.EventType *)
open EventTarget  (* goog.events.EventTarget *)
open EventHandler  (* goog.events.EventHandler *)
open Event  (* goog.events.Event *)
open MouseButton  (* goog.events.BrowserEvent.MouseButton *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)

class external dragger 
inherit eventTarget: element -> element(* opt? *) -> rect(* opt? *) ->  <
getHandler : eventHandler;
setLimits : rect(* opt? *) -> unit;
setHysteresis : number -> unit;
getHysteresis : number;
setScrollTarget : eventTarget -> unit;
setCancelIeDragStart : boolean -> unit;
getEnabled : boolean;
setEnabled : boolean -> unit;
disposeInternal : unit;
startDrag : browserEvent -> unit;
setupDragHandlers : unit;
endDrag : browserEvent -> boolean(* opt? *) -> unit;
endDragCancel : browserEvent -> unit;
doDrag : browserEvent -> number -> number -> boolean -> unit;
limitX : number -> number;
limitY : number -> number;
defaultAction : number -> number -> unit;
> = "goog.fx.Dragger"

class external dragEvent 
inherit event: string -> dragger -> number -> number -> browserEvent -> number(* opt? *) -> number(* opt? *) -> boolean(* opt? *) ->  <
> = "goog.fx.DragEvent"
