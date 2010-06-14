
(** 
    * OClosure Project - 2010
    * Class goog.ui.Button.Side, goog.ui.Button
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open NativeButtonRenderer  (* goog.ui.NativeButtonRenderer *)
open ControlContent  (* goog.ui.ControlContent *)
open Control  (* goog.ui.Control *)
open ButtonRenderer  (* goog.ui.ButtonRenderer *)
open KeyCodes  (* goog.events.KeyCodes *)

class external button 
inherit control: controlContent -> buttonRenderer(* opt? *) -> domHelper(* opt? *) ->  <
getValue : (* any = "*" *);
setValue : (* any = "*" *) -> unit;
setValueInternal : (* any = "*" *) -> unit;
getTooltip : string(* | undefined *);
setTooltip : string -> unit;
setTooltipInternal : string -> unit;
setCollapsed : number -> unit;
disposeInternal : unit;
enterDocument : unit;
handleKeyEventInternal : keyEvent -> boolean;
> = "goog.ui.Button"
