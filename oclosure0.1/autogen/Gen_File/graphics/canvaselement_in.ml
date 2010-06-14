
(** 
    * OClosure Project - 2010
    * Class goog.graphics.CanvasTextElement, goog.graphics.CanvasRectElement, goog.graphics.CanvasPathElement, goog.graphics.CanvasImageElement, goog.graphics.CanvasGroupElement, goog.graphics.CanvasEllipseElement
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open TextElement  (* goog.graphics.TextElement *)
open RectElement  (* goog.graphics.RectElement *)
open PathElement  (* goog.graphics.PathElement *)
open Path  (* goog.graphics.Path *)
open ImageElement  (* goog.graphics.ImageElement *)
open GroupElement  (* goog.graphics.GroupElement *)
open EllipseElement  (* goog.graphics.EllipseElement *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external canvasGroupElement 
inherit groupElement: canvasGraphics ->  <
clear : unit;
setSize : number(* | string *) -> number(* | string *) -> unit;
appendChild : element -> unit;
draw : canvasRenderingContext2D -> unit;
> = "goog.graphics.CanvasGroupElement"

class external canvasEllipseElement 
inherit ellipseElement: element -> canvasGraphics -> number -> number -> number -> number -> stroke -> fill ->  <
setCenter : number -> number -> unit;
setRadius : number -> number -> unit;
draw : canvasRenderingContext2D -> unit;
> = "goog.graphics.CanvasEllipseElement"

class external canvasRectElement 
inherit rectElement: element -> canvasGraphics -> number -> number -> number -> number -> stroke -> fill ->  <
setPosition : number -> number -> unit;
setSize : number -> number -> unit;
draw : canvasRenderingContext2D -> unit;
> = "goog.graphics.CanvasRectElement"

class external canvasPathElement 
inherit pathElement: element -> canvasGraphics -> path(* opt? *) -> stroke -> fill ->  <
setPath : path(* opt? *) -> unit;
draw : canvasRenderingContext2D -> unit;
> = "goog.graphics.CanvasPathElement"

class external canvasTextElement 
inherit textElement: canvasGraphics(* opt? *) -> string -> number -> number -> number -> number -> string(* opt? *) -> font(* opt? *) -> stroke -> fill ->  <
setText : string -> unit;
setFill : fill -> unit;
setStroke : stroke -> unit;
draw : canvasRenderingContext2D -> unit;
> = "goog.graphics.CanvasTextElement"

class external canvasImageElement 
inherit imageElement: element -> canvasGraphics -> number -> number -> number -> number -> string ->  <
setPosition : number -> number -> unit;
setSize : number -> number -> unit;
setSource : string -> unit;
draw : canvasRenderingContext2D -> unit;
> = "goog.graphics.CanvasImageElement"
