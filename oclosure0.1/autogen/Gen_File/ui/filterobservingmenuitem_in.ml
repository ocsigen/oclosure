
(** 
    * OClosure Project - 2010
    * Class goog.ui.FilterObservingMenuItem
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open MenuItem  (* goog.ui.MenuItem *)
open FilterObservingMenuItemRenderer  (* goog.ui.FilterObservingMenuItemRenderer *)
open ControlContent  (* goog.ui.ControlContent *)

class external filterObservingMenuItem 
inherit menuItem: controlContent -> (* any = "*" *)(* opt? *) -> domHelper(* opt? *) -> menuItemRenderer(* opt? *) ->  <
enterDocument : unit;
setObserver : function -> unit;
callObserver : string(* opt? *) -> unit;
> = "goog.ui.FilterObservingMenuItem"
