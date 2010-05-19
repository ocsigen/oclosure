
(** 
    * OClosure Project - 2010
    * Class goog.ui.SelectionModel
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open EventType  (* goog.events.EventType *)
open EventTarget  (* goog.events.EventTarget *)
open Array  (* goog.array *)

class external selectionModel 
inherit eventTarget: (* Array[object] *)(* opt? *) ->  <
getSelectionHandler : function;
setSelectionHandler : function -> unit;
getItemCount : number;
indexOfItem : object(* | undefined *) -> number;
getFirst : object(* | undefined *);
getLast : object(* | undefined *);
getItemAt : number -> object;
addItems : (* Array[object] *)(* | undefined *) -> unit;
addItem : object -> unit;
addItemAt : object -> number -> unit;
removeItem : object -> unit;
removeItemAt : number -> unit;
getSelectedItem : object;
setSelectedItem : object -> unit;
getSelectedIndex : number;
setSelectedIndex : number -> unit;
clear : unit;
disposeInternal : unit;
> = "goog.ui.SelectionModel"
