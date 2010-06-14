
(** 
    * OClosure Project - 2010
    * Class goog.graphics.VmlGraphics
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open String  (* goog.string *)
open Size  (* goog.math.Size *)
open VmlTextElement  (* goog.graphics.VmlTextElement *)
open VmlRectElement  (* goog.graphics.VmlRectElement *)
open VmlPathElement  (* goog.graphics.VmlPathElement *)
open VmlImageElement  (* goog.graphics.VmlImageElement *)
open VmlGroupElement  (* goog.graphics.VmlGroupElement *)
open VmlEllipseElement  (* goog.graphics.VmlEllipseElement *)
open Stroke  (* goog.graphics.Stroke *)
open SolidFill  (* goog.graphics.SolidFill *)
open LinearGradient  (* goog.graphics.LinearGradient *)
open Font  (* goog.graphics.Font *)
open AbstractGraphics  (* goog.graphics.AbstractGraphics *)
open EventHandler  (* goog.events.EventHandler *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external vmlGraphics 
inherit abstractGraphics: string(* | number *) -> string(* | number *) -> number(* opt? *) -> number(* opt? *) -> domHelper(* opt? *) ->  <
toCssSize : number(* | string *) -> string;
toPosCoord : number(* | string *) -> number;
toPosPx : number(* | string *) -> string;
toSizeCoord : string(* | number *) -> number;
toSizePx : number -> string;
setAttribute : element -> string -> string -> unit;
createVmlElement : string -> element;
getVmlElement : string -> element;
setElementFill : strokeAndFillElement -> fill(* opt? *) -> unit;
setElementStroke : strokeAndFillElement -> stroke(* opt? *) -> unit;
setElementTransform : element -> number -> number -> number -> number -> number -> unit;
removeFill : element -> unit;
setPositionAndSize : element -> number -> number -> number -> number -> unit;
createDom : unit;
setCoordOrigin : number -> number -> unit;
setCoordSize : number -> number -> unit;
setSize : number -> number -> unit;
getPixelSize : size;
clear : unit;
drawEllipse : number -> number -> number -> number -> stroke(* opt? *) -> fill(* opt? *) -> vmlGroupElement(* opt? *) -> ellipseElement;
drawRect : number -> number -> number -> number -> stroke(* opt? *) -> fill(* opt? *) -> vmlGroupElement(* opt? *) -> rectElement;
drawImage : number -> number -> number -> number -> string -> vmlGroupElement(* opt? *) -> imageElement;
drawTextOnLine : string -> number -> number -> number -> number -> string(* opt? *) -> font -> stroke(* opt? *) -> fill(* opt? *) -> vmlGroupElement(* opt? *) -> textElement;
drawPath : path -> stroke(* opt? *) -> fill(* opt? *) -> vmlGroupElement(* opt? *) -> pathElement;
getVmlPath : path -> string;
createGroup : vmlGroupElement(* opt? *) -> groupElement;
getTextWidth : string -> font -> number;
enterDocument : unit;
disposeInternal : unit;
> = "goog.graphics.VmlGraphics"
