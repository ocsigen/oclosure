
(** 
    * OClosure Project - 2010
    * Class goog.ui.Palette
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open SelectionModel  (* goog.ui.SelectionModel *)
open PaletteRenderer  (* goog.ui.PaletteRenderer *)
open Control  (* goog.ui.Control *)
open EventType  (* goog.ui.Component.EventType *)
open Error  (* goog.ui.Component.Error *)
open Size  (* goog.math.Size *)
open KeyCodes  (* goog.events.KeyCodes *)
open EventType  (* goog.events.EventType *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external palette 
inherit control: (* Array[node] *) -> paletteRenderer(* opt? *) -> domHelper(* opt? *) ->  <
disposeInternal : unit;
setContentInternal : (* Array[node] *) -> unit;
getCaption : null;
setCaption : string -> unit;
handleMouseOver : browserEvent -> unit;
handleMouseOut : browserEvent -> unit;
handleMouseDown : event -> unit;
performActionInternal : event -> boolean;
handleKeyEvent : keyEvent -> boolean;
handleSelectionChange : event -> unit;
getSize : size;
setSize : size(* | number *) -> number(* opt? *) -> unit;
getHighlightedIndex : number;
getHighlightedItem : node;
setHighlightedIndex : number -> unit;
setHighlightedItem : node -> unit;
getSelectedIndex : number;
getSelectedItem : node;
setSelectedIndex : number -> unit;
setSelectedItem : node -> unit;
> = "goog.ui.Palette"
