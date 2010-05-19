
(** 
    * OClosure Project - 2010
    * Class goog.ui.TriStateMenuItem.State, goog.ui.TriStateMenuItem
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open TriStateMenuItemRenderer  (* goog.ui.TriStateMenuItemRenderer *)
open MenuItem  (* goog.ui.MenuItem *)
open ControlContent  (* goog.ui.ControlContent *)
open State  (* goog.ui.Component.State *)
open EventType  (* goog.ui.Component.EventType *)
open Classes  (* goog.dom.classes *)

class external triStateMenuItem 
inherit menuItem: controlContent -> object(* opt? *) -> domHelper(* opt? *) -> menuItemRenderer(* opt? *) ->  <
getCheckedState : state;
setCheckedState : state -> unit;
performActionInternal : unit;
> = "goog.ui.TriStateMenuItem"
