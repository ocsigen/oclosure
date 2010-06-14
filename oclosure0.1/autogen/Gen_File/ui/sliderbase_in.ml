
(** 
    * OClosure Project - 2010
    * Class goog.ui.SliderBase.Orientation, goog.ui.SliderBase
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open RangeModel  (* goog.ui.RangeModel *)
open EventType  (* goog.ui.Component.EventType *)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open Coordinate  (* goog.math.Coordinate *)
open Math  (* goog.math *)
open SlideFrom  (* goog.fx.dom.SlideFrom *)
open EventType  (* goog.fx.Dragger.EventType *)
open Dragger  (* goog.fx.Dragger *)
open EventType  (* goog.fx.Animation.EventType *)
open EventType  (* goog.events.MouseWheelHandler.EventType *)
open MouseWheelHandler  (* goog.events.MouseWheelHandler *)
open EventType  (* goog.events.KeyHandler.EventType *)
open KeyHandler  (* goog.events.KeyHandler *)
open KeyCodes  (* goog.events.KeyCodes *)
open EventType  (* goog.events.EventType *)
open Classes  (* goog.dom.classes *)
open State  (* goog.dom.a11y.State *)
open Role  (* goog.dom.a11y.Role *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)

class external sliderBase 
inherit component: domHelper(* opt? *) ->  <
getCssClass : orientation -> string;
createDom : unit;
decorateInternal : unit;
enterDocument : unit;
moveThumbs : number -> unit;
setValueAndExtent : number -> number -> unit;
getMinimum : number;
setMinimum : number -> unit;
getMaximum : number;
setMaximum : number -> unit;
getValueThumb : hTMLDivElement;
getExtentThumb : hTMLDivElement;
handleRangeModelChange : event -> unit;
setOrientation : orientation -> unit;
getOrientation : orientation;
disposeInternal : unit;
getBlockIncrement : number;
setBlockIncrement : number -> unit;
setMinExtent : number -> unit;
getUnitIncrement : number;
setUnitIncrement : number -> unit;
getStep : number(* opt? *);
setStep : number(* opt? *) -> unit;
getMoveToPointEnabled : boolean;
setMoveToPointEnabled : boolean -> unit;
getValue : number;
setValue : number -> unit;
getExtent : number;
setExtent : number -> unit;
setVisible : boolean -> unit;
setAriaRoles : unit;
updateAriaStates : unit;
> = "goog.ui.SliderBase"
