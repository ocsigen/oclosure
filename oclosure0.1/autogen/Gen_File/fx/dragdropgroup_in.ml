
(** 
    * OClosure Project - 2010
    * Class goog.fx.DragDropGroup
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open DragDropItem  (* goog.fx.DragDropItem *)
open AbstractDragDrop  (* goog.fx.AbstractDragDrop *)

class external dragDropGroup 
inherit abstractDragDrop:  <
addItem : element(* | string *) -> object(* opt? *) -> unit;
addDragDropItem : dragDropItem -> unit;
setSelection : (* Array[dragDropItem] *) -> unit;
> = "goog.fx.DragDropGroup"
