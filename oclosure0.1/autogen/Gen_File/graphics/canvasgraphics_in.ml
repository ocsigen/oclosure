
(** 
    * OClosure Project - 2010
    * Class goog.graphics.CanvasGraphics
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Size  (* goog.math.Size *)
open Stroke  (* goog.graphics.Stroke *)
open SolidFill  (* goog.graphics.SolidFill *)
open LinearGradient  (* goog.graphics.LinearGradient *)
open Font  (* goog.graphics.Font *)
open CanvasTextElement  (* goog.graphics.CanvasTextElement *)
open CanvasRectElement  (* goog.graphics.CanvasRectElement *)
open CanvasPathElement  (* goog.graphics.CanvasPathElement *)
open CanvasImageElement  (* goog.graphics.CanvasImageElement *)
open CanvasGroupElement  (* goog.graphics.CanvasGroupElement *)
open CanvasEllipseElement  (* goog.graphics.CanvasEllipseElement *)
open AbstractGraphics  (* goog.graphics.AbstractGraphics *)
open Dom  (* goog.dom *)

class external canvasGraphics 
inherit abstractGraphics: string(* | number *) -> string(* | number *) -> number(* opt? *) -> number(* opt? *) -> domHelper(* opt? *) ->  <
setElementFill : strokeAndFillElement -> fill -> unit;
setElementStroke : strokeAndFillElement -> stroke -> unit;
setElementTransform : element -> number -> number -> number -> number -> number -> unit;
pushElementTransform : element -> unit;
popElementTransform : unit;
createDom : unit;
getContext : object;
setCoordOrigin : number -> number -> unit;
setCoordSize : number -> number -> unit;
setSize : number -> number -> unit;
getPixelSize : unit;
updateSize : unit;
reset : unit;
clear : unit;
redraw : unit;
drawElement : element -> unit;
drawEllipse : number -> number -> number -> number -> stroke -> fill -> canvasGroupElement(* opt? *) -> ellipseElement;
drawRect : number -> number -> number -> number -> stroke -> fill -> canvasGroupElement(* opt? *) -> rectElement;
drawImage : number -> number -> number -> number -> string -> canvasGroupElement(* opt? *) -> imageElement;
drawTextOnLine : string -> number -> number -> number -> number -> string(* opt? *) -> font(* opt? *) -> stroke -> fill -> canvasGroupElement(* opt? *) -> textElement;
drawPath : path(* opt? *) -> stroke -> fill -> canvasGroupElement(* opt? *) -> pathElement;
isDrawable : canvasGroupElement -> boolean;
isRedrawRequired : canvasGroupElement -> boolean;
createGroup : canvasGroupElement(* opt? *) -> canvasGroupElement;
getTextWidth : string -> font -> unit;
disposeInternal : unit;
enterDocument : unit;
suspend : unit;
resume : unit;
> = "goog.graphics.CanvasGraphics"
