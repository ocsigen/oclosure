
(** 
    * OClosure Project - 2010
    * Class goog.graphics.AbstractGraphics
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open Size  (* goog.math.Size *)
open Coordinate  (* goog.math.Coordinate *)
open Path  (* goog.graphics.Path *)

class external abstractGraphics 
inherit component: number(* | string *) -> number(* | string *) -> number(* opt? *) -> number(* opt? *) -> domHelper(* opt? *) ->  <
getCanvasElement : groupElement;
setCoordSize : number -> number -> unit;
getCoordSize : size;
setCoordOrigin : number -> number -> unit;
getCoordOrigin : coordinate;
setSize : number -> number -> unit;
getSize : size;
getPixelSize : size(* opt? *);
getPixelScaleX : number;
getPixelScaleY : number;
clear : unit;
removeElement : element -> unit;
setElementFill : strokeAndFillElement -> fill(* opt? *) -> unit;
setElementStroke : strokeAndFillElement -> stroke(* opt? *) -> unit;
setElementTransform : element -> number -> number -> number -> number -> number -> unit;
drawCircle : number -> number -> number -> stroke(* opt? *) -> fill(* opt? *) -> groupElement(* opt? *) -> ellipseElement;
drawEllipse : number -> number -> number -> number -> stroke(* opt? *) -> fill(* opt? *) -> groupElement(* opt? *) -> ellipseElement;
drawRect : number -> number -> number -> number -> stroke(* opt? *) -> fill(* opt? *) -> groupElement(* opt? *) -> rectElement;
drawText : string -> number -> number -> number -> number -> string -> string -> font -> stroke(* opt? *) -> fill(* opt? *) -> groupElement(* opt? *) -> textElement;
drawTextOnLine : string -> number -> number -> number -> number -> string -> font -> stroke(* opt? *) -> fill(* opt? *) -> groupElement(* opt? *) -> textElement;
drawPath : path -> stroke(* opt? *) -> fill(* opt? *) -> groupElement(* opt? *) -> pathElement;
createGroup : groupElement(* opt? *) -> groupElement;
createPath : path;
getTextWidth : string -> font -> number;
isDomClonable : boolean;
suspend : unit;
resume : unit;
> = "goog.graphics.AbstractGraphics"
