
(** 
    * OClosure Project - 2010
    * Class goog.ui.MenuBase
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Popup  (* goog.ui.Popup *)
open EventType  (* goog.events.KeyHandler.EventType *)
open KeyHandler  (* goog.events.KeyHandler *)
open EventType  (* goog.events.EventType *)
open EventHandler  (* goog.events.EventHandler *)

class external menuBase 
inherit popup: element(* opt? *) ->  <
events : unit;
iTEM_ACTION : unit;
disposeInternal : unit;
getSelectedItem : object;
setSelectedItem : object -> unit;
onMouseOver : event -> unit;
onMouseOut : event -> unit;
onMouseDown : event -> unit;
onMouseUp : event -> unit;
onKeyDown : keyEvent -> unit;
> = "goog.ui.MenuBase"
