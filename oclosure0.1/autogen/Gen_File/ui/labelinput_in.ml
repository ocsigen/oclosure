
(** 
    * OClosure Project - 2010
    * Class goog.ui.LabelInput
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Component  (* goog.ui.Component *)
open EventType  (* goog.events.EventType *)
open EventHandler  (* goog.events.EventHandler *)
open Events  (* goog.events *)
open Classes  (* goog.dom.classes *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)

class external labelInput 
inherit component: string(* opt? *) -> domHelper(* opt? *) ->  <
createDom : unit;
decorateInternal : hTMLInputElement -> unit;
enterDocument : unit;
exitDocument : unit;
disposeInternal : unit;
lABEL_CLASS_NAME : unit;
hasChanged : boolean;
clear : unit;
setValue : string -> unit;
getValue : string;
focusAndSelect : unit;
> = "goog.ui.LabelInput"
