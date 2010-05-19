
(** 
    * OClosure Project - 2010
    * Class goog.ui.Select
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open SelectionModel  (* goog.ui.SelectionModel *)
open MenuButton  (* goog.ui.MenuButton *)
open ControlContent  (* goog.ui.ControlContent *)
open EventType  (* goog.ui.Component.EventType *)
open EventType  (* goog.events.EventType *)

class external select 
inherit menuButton: controlContent -> menu(* opt? *) -> buttonRenderer(* opt? *) -> domHelper(* opt? *) ->  <
enterDocument : unit;
decorateInternal : element -> unit;
disposeInternal : unit;
handleMenuAction : event -> unit;
handleSelectionChange : event -> unit;
setMenu : menu -> menu(* | undefined *);
getDefaultCaption : controlContent;
setDefaultCaption : controlContent -> unit;
addItem : menuItem(* | menuSeparator *) -> unit;
addItemAt : menuItem(* | menuSeparator *) -> number -> unit;
removeItem : menuItem -> unit;
removeItemAt : number -> unit;
setSelectedItem : menuItem -> unit;
setSelectedIndex : number -> unit;
setValue : (* any = "*" *) -> unit;
getSelectedItem : menuItem;
getSelectedIndex : number;
getSelectionModel : selectionModel;
setOpen : boolean -> unit;
> = "goog.ui.Select"
