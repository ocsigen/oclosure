
(** 
    * OClosure Project - 2010
    * Class goog.ui.Prompt
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open EventType  (* goog.ui.Dialog.EventType *)
open DefaultButtonKeys  (* goog.ui.Dialog.DefaultButtonKeys *)
open ButtonSet  (* goog.ui.Dialog.ButtonSet *)
open Dialog  (* goog.ui.Dialog *)
open Error  (* goog.ui.Component.Error *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)

class external prompt 
inherit dialog: string -> string -> function -> string(* opt? *) -> string(* opt? *) -> boolean(* opt? *) -> domHelper(* opt? *) ->  <
setRows : number -> unit;
getRows : number;
setCols : number -> unit;
getCols : number;
createDom : unit;
setVisible : boolean -> unit;
setDefaultValue : string -> unit;
disposeInternal : unit;
> = "goog.ui.Prompt"
