
(** 
    * OClosure Project - 2010
    * Class goog.ui.CharPicker
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open MenuItem  (* goog.ui.MenuItem *)
open MenuButton  (* goog.ui.MenuButton *)
open Menu  (* goog.ui.Menu *)
open LabelInput  (* goog.ui.LabelInput *)
open HoverCard  (* goog.ui.HoverCard *)
open FlatButtonRenderer  (* goog.ui.FlatButtonRenderer *)
open ContainerScroller  (* goog.ui.ContainerScroller *)
open Button  (* goog.ui.Button *)
open Style  (* goog.style *)
open Set  (* goog.structs.Set *)
open UChar  (* goog.i18n.uChar *)
open CharListDecompressor  (* goog.i18n.CharListDecompressor *)
open InputHandler  (* goog.events.InputHandler *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external charPicker 
inherit component: charPickerData -> (* Array[string] *)(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> domHelper(* opt? *) ->  <
getSelectedChar : string(* opt? *);
getRecentChars : (* Array[string] *);
createDom : unit;
disposeInternal : unit;
decorateInternal : unit;
enterDocument : unit;
> = "goog.ui.CharPicker"
