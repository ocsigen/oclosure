
(** 
    * OClosure Project - 2010
    * Class goog.ui.SelectionMenuButton.SelectionState, goog.ui.SelectionMenuButton
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open MenuItem  (* goog.ui.MenuItem *)
open MenuButton  (* goog.ui.MenuButton *)
open Menu  (* goog.ui.Menu *)
open EventType  (* goog.ui.Component.EventType *)

class external selectionMenuButton 
inherit menuButton: buttonRenderer(* opt? *) -> menuItemRenderer(* opt? *) -> domHelper(* opt? *) ->  <
setEnabled : boolean -> unit;
handleMouseDown : unit;
createDom : unit;
decorateInternal : unit;
setMenu : unit;
setSelectionState : selectionState -> unit;
getSelectionState : unit;
> = "goog.ui.SelectionMenuButton"
