
(** 
    * OClosure Project - 2010
    * Class goog.ui.MenuItem
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open MenuItemRenderer  (* goog.ui.MenuItemRenderer *)
open ControlContent  (* goog.ui.ControlContent *)
open Control  (* goog.ui.Control *)
open State  (* goog.ui.Component.State *)

class external menuItem 
inherit control: controlContent -> (* any = "*" *)(* opt? *) -> domHelper(* opt? *) -> menuItemRenderer(* opt? *) ->  <
getValue : (* any = "*" *);
setValue : (* any = "*" *) -> unit;
setSelectable : boolean -> unit;
setCheckable : boolean -> unit;
> = "goog.ui.MenuItem"
