
(** 
    * OClosure Project - 2010
    * Class goog.ui.ProgressBar.Orientation, goog.ui.ProgressBar
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open RangeModel  (* goog.ui.RangeModel *)
open EventType  (* goog.ui.Component.EventType *)
open Component  (* goog.ui.Component *)
open EventType  (* goog.events.EventType *)
open Events  (* goog.events *)
open Classes  (* goog.dom.classes *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)

class external progressBar 
inherit component: domHelper(* opt? *) ->  <
createDom : unit;
enterDocument : unit;
exitDocument : unit;
decorateInternal : hTMLElement -> unit;
getValue : number;
setValue : number -> unit;
getMinimum : number;
setMinimum : number -> unit;
getMaximum : number;
setMaximum : number -> unit;
setOrientation : orientation -> unit;
getOrientation : orientation;
disposeInternal : unit;
getStep : number(* opt? *);
setStep : number(* opt? *) -> unit;
> = "goog.ui.ProgressBar"
