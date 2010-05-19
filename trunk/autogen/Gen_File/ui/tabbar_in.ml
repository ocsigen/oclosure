
(** 
    * OClosure Project - 2010
    * Class goog.ui.TabBar.Location, goog.ui.TabBar
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open TabBarRenderer  (* goog.ui.TabBarRenderer *)
open Tab  (* goog.ui.Tab *)
open Orientation  (* goog.ui.Container.Orientation *)
open Container  (* goog.ui.Container *)
open EventType  (* goog.ui.Component.EventType *)

class external tabBar 
inherit container: location(* opt? *) -> tabBarRenderer(* opt? *) -> domHelper(* opt? *) ->  <
disposeInternal : unit;
removeChild : string(* | control *) -> boolean(* opt? *) -> control;
getLocation : location;
setLocation : location -> unit;
isAutoSelectTabs : boolean;
setAutoSelectTabs : boolean -> unit;
setHighlightedIndexFromKeyEvent : number -> unit;
getSelectedTab : control(* opt? *);
setSelectedTab : control(* opt? *) -> unit;
getSelectedTabIndex : number;
setSelectedTabIndex : number -> unit;
deselectIfSelected : control(* opt? *) -> unit;
isSelectableTab : control -> boolean;
handleTabSelect : event -> unit;
handleTabUnselect : event -> unit;
handleTabDisable : event -> unit;
handleTabHide : event -> unit;
handleFocus : event -> unit;
getOrientationFromLocation : location -> orientation;
> = "goog.ui.TabBar"
