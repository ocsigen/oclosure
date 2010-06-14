
(** 
    * OClosure Project - 2010
    * Class goog.fx.DragDropItem, goog.fx.DragDropEvent, goog.fx.AbstractDragDrop
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Style  (* goog.style *)
open Coordinate  (* goog.math.Coordinate *)
open Box  (* goog.math.Box *)
open EventType  (* goog.fx.Dragger.EventType *)
open Dragger  (* goog.fx.Dragger *)
open EventType  (* goog.events.EventType *)
open EventTarget  (* goog.events.EventTarget *)
open Event  (* goog.events.Event *)
open Events  (* goog.events *)
open Classes  (* goog.dom.classes *)
open Dom  (* goog.dom *)

class external abstractDragDrop 
inherit eventTarget:  <
setDragClass : string -> unit;
setSourceClass : string -> unit;
setTargetClass : string -> unit;
isInitialized : boolean;
addItem : dragDropItem -> unit;
addTarget : abstractDragDrop -> unit;
setScrollTarget : eventTarget -> unit;
init : unit;
initItem : dragDropItem -> unit;
removeItems : unit;
maybeStartDrag : browserEvent -> dragDropItem -> unit;
startDrag : browserEvent -> dragDropItem -> unit;
recalculateDragTargets : unit;
createDraggerFor : element -> element -> browserEvent -> dragger;
endDrag : dragEvent -> unit;
afterEndDrag : dragDropItem(* opt? *) -> unit;
disposeDrag : unit;
addScrollableContainer : element -> unit;
setSubtargetFunction : function -> unit;
createDragElement : element -> element;
getDragElementPosition : element -> element -> browserEvent -> coordinate;
getDragger : dragger;
disposeInternal : unit;
> = "goog.fx.AbstractDragDrop"

class external dragDropEvent 
inherit event: string -> abstractDragDrop -> dragDropItem -> abstractDragDrop(* opt? *) -> dragDropItem(* opt? *) -> element(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> object(* opt? *) ->  <
disposeInternal : unit;
> = "goog.fx.DragDropEvent"

class external dragDropItem 
inherit eventTarget: element(* | string *) -> object(* opt? *) ->  <
getData : object(* | null| undefined *);
getDraggableElement : element -> element;
getCurrentDragElement : element;
getDraggableElements : (* Array[element] *);
setParent : abstractDragDrop -> unit;
> = "goog.fx.DragDropItem"

class external activeDropTarget_ : box -> abstractDragDrop(* opt? *) -> dragDropItem(* opt? *) -> element(* opt? *) ->  <
> = "goog.fx.ActiveDropTarget_"

class external scrollableContainer_ : element ->  <
> = "goog.fx.ScrollableContainer_"
