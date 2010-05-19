
(** 
    * OClosure Project - 2010
    * Class goog.demos.SampleComponent
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Component  (* goog.ui.Component *)
open EventType  (* goog.events.KeyHandler.EventType *)
open KeyHandler  (* goog.events.KeyHandler *)
open KeyCodes  (* goog.events.KeyCodes *)
open EventType  (* goog.events.EventType *)
open EventHandler  (* goog.events.EventHandler *)
open Classes  (* goog.dom.classes *)
open Dom  (* goog.dom *)

class external sampleComponent 
inherit component: string(* opt? *) -> domHelper(* opt? *) ->  <
createDom : unit;
decorateInternal : hTMLElement -> unit;
disposeInternal : unit;
enterDocument : unit;
exitDocument : unit;
getLabelText : string;
setLabelText : string -> unit;
> = "goog.demos.SampleComponent"
