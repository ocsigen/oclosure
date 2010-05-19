
(** 
    * OClosure Project - 2010
    * Class goog.ui.Menu.EventType, goog.ui.Menu
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open MenuSeparator  (* goog.ui.MenuSeparator *)
open MenuRenderer  (* goog.ui.MenuRenderer *)
open MenuItem  (* goog.ui.MenuItem *)
open Orientation  (* goog.ui.Container.Orientation *)
open Container  (* goog.ui.Container *)
open State  (* goog.ui.Component.State *)
open EventType  (* goog.ui.Component.EventType *)
open Style  (* goog.style *)
open String  (* goog.string *)

class external menu 
inherit container: domHelper(* opt? *) -> menuRenderer(* opt? *) ->  <
getCssClass : string;
containsElement : element -> boolean;
addItem : menuItem(* | menuSeparator *) -> unit;
addItemAt : menuItem(* | menuSeparator *) -> number -> unit;
removeItem : menuItem(* | menuSeparator *) -> unit;
removeItemAt : number -> unit;
getItemAt : number -> menuItem(* | menuSeparator| null *);
getItemCount : number;
getItems : (* Array[menuItem] *);
setPosition : number(* | coordinate *) -> number(* opt? *) -> unit;
getPosition : coordinate(* opt? *);
setAllowAutoFocus : boolean -> unit;
getAllowAutoFocus : boolean;
setAllowHighlightDisabled : boolean -> unit;
getAllowHighlightDisabled : boolean;
setVisible : unit;
handleEnterItem : unit;
highlightNextPrefix : string -> boolean;
canHighlightItem : unit;
> = "goog.ui.Menu"
