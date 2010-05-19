
(** 
    * OClosure Project - 2010
    * Class goog.fx.DragListGroupEvent, goog.fx.DragListGroup, goog.fx.DragListDirection
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Style  (* goog.style *)
open Coordinate  (* goog.math.Coordinate *)
open EventType  (* goog.fx.Dragger.EventType *)
open Dragger  (* goog.fx.Dragger *)
open EventType  (* goog.events.EventType *)
open EventTarget  (* goog.events.EventTarget *)
open EventHandler  (* goog.events.EventHandler *)
open Classes  (* goog.dom.classes *)
open NodeType  (* goog.dom.NodeType *)
open Dom  (* goog.dom *)

class external dragListGroup 
inherit eventTarget:  <
addDragList : element -> dragListDirection -> boolean(* opt? *) -> string(* opt? *) -> unit;
setFunctionToGetHandleForDragItem : (* function *) -> unit;
setDragItemHoverClass : string -> unit;
setDragItemHandleHoverClass : string -> unit;
setCurrDragItemClass : string -> unit;
setDraggerElClass : string -> unit;
init : unit;
disposeInternal : unit;
> = "goog.fx.DragListGroup"

class external dragListGroupEvent : string -> dragListGroup -> browserEvent(* | dragEvent *) -> element -> element -> dragger -> coordinate(* opt? *) -> element(* opt? *) -> element(* opt? *) ->  <
> = "goog.fx.DragListGroupEvent"
