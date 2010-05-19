
(** 
    * OClosure Project - 2010
    * Class goog.graphics.SvgTextElement, goog.graphics.SvgRectElement, goog.graphics.SvgPathElement, goog.graphics.SvgImageElement, goog.graphics.SvgGroupElement, goog.graphics.SvgEllipseElement
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open TextElement  (* goog.graphics.TextElement *)
open RectElement  (* goog.graphics.RectElement *)
open PathElement  (* goog.graphics.PathElement *)
open ImageElement  (* goog.graphics.ImageElement *)
open GroupElement  (* goog.graphics.GroupElement *)
open EllipseElement  (* goog.graphics.EllipseElement *)
open Dom  (* goog.dom *)

class external svgGroupElement 
inherit groupElement: element -> svgGraphics ->  <
clear : unit;
setSize : number(* | string *) -> number(* | string *) -> unit;
> = "goog.graphics.SvgGroupElement"

class external svgEllipseElement 
inherit ellipseElement: element -> svgGraphics -> stroke(* opt? *) -> fill(* opt? *) ->  <
setCenter : number -> number -> unit;
setRadius : number -> number -> unit;
> = "goog.graphics.SvgEllipseElement"

class external svgRectElement 
inherit rectElement: element -> svgGraphics -> stroke(* opt? *) -> fill(* opt? *) ->  <
setPosition : number -> number -> unit;
setSize : number -> number -> unit;
> = "goog.graphics.SvgRectElement"

class external svgPathElement 
inherit pathElement: element -> svgGraphics -> stroke(* opt? *) -> fill(* opt? *) ->  <
setPath : path -> unit;
> = "goog.graphics.SvgPathElement"

class external svgTextElement 
inherit textElement: element -> svgGraphics -> stroke(* opt? *) -> fill(* opt? *) ->  <
setText : string -> unit;
> = "goog.graphics.SvgTextElement"

class external svgImageElement 
inherit imageElement: element -> svgGraphics ->  <
setPosition : number -> number -> unit;
setSize : number -> number -> unit;
setSource : string -> unit;
> = "goog.graphics.SvgImageElement"
