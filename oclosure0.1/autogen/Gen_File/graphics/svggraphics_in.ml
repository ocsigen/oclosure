
(** 
    * OClosure Project - 2010
    * Class goog.graphics.SvgGraphics
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Size  (* goog.math.Size *)
open SvgTextElement  (* goog.graphics.SvgTextElement *)
open SvgRectElement  (* goog.graphics.SvgRectElement *)
open SvgPathElement  (* goog.graphics.SvgPathElement *)
open SvgImageElement  (* goog.graphics.SvgImageElement *)
open SvgGroupElement  (* goog.graphics.SvgGroupElement *)
open SvgEllipseElement  (* goog.graphics.SvgEllipseElement *)
open Stroke  (* goog.graphics.Stroke *)
open SolidFill  (* goog.graphics.SolidFill *)
open LinearGradient  (* goog.graphics.LinearGradient *)
open Font  (* goog.graphics.Font *)
open AbstractGraphics  (* goog.graphics.AbstractGraphics *)
open EventHandler  (* goog.events.EventHandler *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)

class external svgGraphics 
inherit abstractGraphics: string(* | number *) -> string(* | number *) -> number(* opt? *) -> number(* opt? *) -> domHelper(* opt? *) ->  <
setElementAttributes : element -> object -> unit;
setElementFill : strokeAndFillElement -> fill(* opt? *) -> unit;
setElementStroke : strokeAndFillElement -> stroke(* opt? *) -> unit;
setElementTransform : element -> number -> number -> number -> number -> number -> unit;
createDom : unit;
setCoordOrigin : number -> number -> unit;
setCoordSize : number -> number -> unit;
setSize : number -> number -> unit;
getPixelSize : unit;
clear : unit;
drawEllipse : number -> number -> number -> number -> stroke(* opt? *) -> fill(* opt? *) -> svgGroupElement(* opt? *) -> ellipseElement;
drawRect : number -> number -> number -> number -> stroke(* opt? *) -> fill(* opt? *) -> svgGroupElement(* opt? *) -> rectElement;
drawImage : number -> number -> number -> number -> string -> svgGroupElement(* opt? *) -> imageElement;
drawTextOnLine : string -> number -> number -> number -> number -> string -> font -> stroke(* opt? *) -> fill(* opt? *) -> svgGroupElement(* opt? *) -> textElement;
drawPath : path -> stroke(* opt? *) -> fill(* opt? *) -> svgGroupElement(* opt? *) -> pathElement;
getSvgPath : path -> string;
createGroup : svgGroupElement(* opt? *) -> groupElement;
getTextWidth : string -> font -> unit;
enterDocument : unit;
exitDocument : unit;
disposeInternal : unit;
isDomClonable : unit;
> = "goog.graphics.SvgGraphics"
