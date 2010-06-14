
(** 
    * OClosure Project - 2010
    * Class goog.ui.RangeModel
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open EventType  (* goog.ui.Component.EventType *)
open EventTarget  (* goog.events.EventTarget *)

class external rangeModel 
inherit eventTarget:  <
setMute : boolean -> unit;
setValue : number -> unit;
getValue : number;
setExtent : number -> unit;
getExtent : number;
setMinimum : number -> unit;
getMinimum : number;
setMaximum : number -> unit;
getMaximum : number;
getStep : number(* opt? *);
setStep : number(* opt? *) -> unit;
roundToStepWithMin : number -> number;
roundToStep : number -> number;
> = "goog.ui.RangeModel"
