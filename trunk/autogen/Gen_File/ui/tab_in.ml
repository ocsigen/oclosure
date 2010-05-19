
(** 
    * OClosure Project - 2010
    * Class goog.ui.Tab
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open TabRenderer  (* goog.ui.TabRenderer *)
open ControlContent  (* goog.ui.ControlContent *)
open Control  (* goog.ui.Control *)
open State  (* goog.ui.Component.State *)

class external tab 
inherit control: controlContent -> tabRenderer(* opt? *) -> domHelper(* opt? *) ->  <
getTooltip : string(* | undefined *);
setTooltip : string -> unit;
setTooltipInternal : string -> unit;
> = "goog.ui.Tab"
