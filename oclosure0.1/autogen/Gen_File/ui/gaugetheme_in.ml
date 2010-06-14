
(** 
    * OClosure Project - 2010
    * Class goog.ui.GaugeTheme
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Stroke  (* goog.graphics.Stroke *)
open SolidFill  (* goog.graphics.SolidFill *)
open LinearGradient  (* goog.graphics.LinearGradient *)

class external gaugeTheme :  <
getExternalBorderStroke : stroke;
getExternalBorderFill : number -> number -> number -> fill;
getInternalBorderStroke : stroke;
getInternalBorderFill : number -> number -> number -> fill;
getMajorTickStroke : stroke;
getMinorTickStroke : stroke;
getHingeStroke : stroke;
getHingeFill : number -> number -> number -> fill;
getNeedleStroke : stroke;
getNeedleFill : number -> number -> number -> fill;
getTitleColor : string;
getValueColor : string;
getTickLabelColor : string;
> = "goog.ui.GaugeTheme"
