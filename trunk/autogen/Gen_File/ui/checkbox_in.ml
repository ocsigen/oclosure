
(** 
    * OClosure Project - 2010
    * Class goog.ui.Checkbox.State, goog.ui.Checkbox
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open Control  (* goog.ui.Control *)
open EventType  (* goog.ui.Component.EventType *)
open Object  (* goog.object *)
open EventType  (* goog.events.KeyHandler.EventType *)
open KeyCodes  (* goog.events.KeyCodes *)
open EventType  (* goog.events.EventType *)
open Classes  (* goog.dom.classes *)
open Array  (* goog.array *)

class external checkbox 
inherit control: state(* opt? *) -> domHelper(* opt? *) ->  <
getChecked : state;
isChecked : boolean;
isUnchecked : boolean;
isUndetermined : boolean;
setChecked : state -> unit;
setLabel : element -> unit;
toggle : unit;
createDom : unit;
decorateInternal : unit;
enterDocument : unit;
updateView : unit;
setEnabled : unit;
handleKeyEventInternal : unit;
> = "goog.ui.Checkbox"
