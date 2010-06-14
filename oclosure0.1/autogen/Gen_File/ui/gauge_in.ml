
(** 
    * OClosure Project - 2010
    * Class goog.ui.GaugeColoredRange, goog.ui.Gauge
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open GaugeTheme  (* goog.ui.GaugeTheme *)
open Component  (* goog.ui.Component *)
open SolidFill  (* goog.graphics.SolidFill *)
open Font  (* goog.graphics.Font *)
open Graphics  (* goog.graphics *)
open Animation  (* goog.fx.Animation *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)

class external gaugeColoredRange : number -> number -> string ->  <
> = "goog.ui.GaugeColoredRange"

class external gauge 
inherit component: number -> number -> domHelper(* opt? *) ->  <
rED : unit;
gREEN : unit;
yELLOW : unit;
getMinimum : number;
setMinimum : number -> unit;
getMaximum : number;
setMaximum : number -> unit;
setValue : number -> string(* opt? *) -> unit;
setTicks : number -> number -> unit;
setMajorTickLabels : (* Array[string] *) -> unit;
setTitleTop : string -> unit;
setTitleBottom : string -> unit;
setTitleFont : font -> unit;
setValueFont : font -> unit;
setTheme : gaugeTheme -> unit;
addBackgroundColor : number -> number -> string -> unit;
createDom : unit;
redraw : unit;
enterDocument : unit;
exitDocument : unit;
disposeInternal : unit;
> = "goog.ui.Gauge"
