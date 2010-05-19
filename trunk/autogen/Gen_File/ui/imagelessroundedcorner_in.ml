
(** 
    * OClosure Project - 2010
    * Class goog.ui.VmlRoundedCorner, goog.ui.ImagelessRoundedCorner, goog.ui.CanvasRoundedCorner, goog.ui.AbstractImagelessRoundedCorner
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open VmlGraphics  (* goog.graphics.VmlGraphics *)
open Stroke  (* goog.graphics.Stroke *)
open SolidFill  (* goog.graphics.SolidFill *)
open DomHelper  (* goog.dom.DomHelper *)

class external create : element(* opt? *) -> number -> number -> number -> number -> corner -> string -> string(* opt? *) -> domHelper(* opt? *) ->  <
> = "goog.ui.ImagelessRoundedCorner.create"

class external abstractImagelessRoundedCorner : element(* opt? *) -> number -> number -> number -> number -> corner -> string -> string(* opt? *) -> domHelper(* opt? *) ->  <
getEndAngle : number;
getStartAngle : number;
getBorderWidthOffset : number;
getElement : element(* opt? *);
draw : unit;
getHeight : number;
setHeight : number -> unit;
getWidth : number;
setWidth : number -> unit;
getLineWidth : number;
setLineWidth : number -> unit;
getRadius : number;
setRadius : number -> unit;
getBorderColor : string;
setBorderColor : string -> unit;
getBackgroundColor : string(* | undefined *);
setBackgroundColor : string -> unit;
> = "goog.ui.AbstractImagelessRoundedCorner"

class external canvasRoundedCorner 
inherit abstractImagelessRoundedCorner: element(* opt? *) -> number -> number -> number -> number -> corner -> string -> string(* opt? *) -> domHelper(* opt? *) ->  <
getEndAngle : unit;
getStartAngle : unit;
getElement : unit;
draw : unit;
> = "goog.ui.CanvasRoundedCorner"

class external vmlRoundedCorner 
inherit abstractImagelessRoundedCorner: element(* opt? *) -> number -> number -> number -> number -> corner -> string -> string(* opt? *) -> domHelper(* opt? *) ->  <
getEndAngle : unit;
getStartAngle : unit;
getElement : unit;
draw : unit;
> = "goog.ui.VmlRoundedCorner"
