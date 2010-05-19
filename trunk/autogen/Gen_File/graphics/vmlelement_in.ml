
(** 
    * OClosure Project - 2010
    * Class goog.graphics.VmlTextElement, goog.graphics.VmlRectElement, goog.graphics.VmlPathElement, goog.graphics.VmlImageElement, goog.graphics.VmlGroupElement, goog.graphics.VmlEllipseElement
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

class external vmlGetElement_ :  <
> = "goog.graphics.vmlGetElement_"

class external vmlGroupElement 
inherit groupElement: element -> vmlGraphics ->  <
getElement : unit;
clear : unit;
setSize : number -> number -> unit;
> = "goog.graphics.VmlGroupElement"

class external vmlEllipseElement 
inherit ellipseElement: element -> vmlGraphics -> number -> number -> number -> number -> stroke(* opt? *) -> fill(* opt? *) ->  <
getElement : unit;
setCenter : number -> number -> unit;
setRadius : number -> number -> unit;
> = "goog.graphics.VmlEllipseElement"

class external vmlRectElement 
inherit rectElement: element -> vmlGraphics -> stroke(* opt? *) -> fill(* opt? *) ->  <
getElement : unit;
setPosition : number -> number -> unit;
setSize : number -> number -> unit;
> = "goog.graphics.VmlRectElement"

class external vmlPathElement 
inherit pathElement: element -> vmlGraphics -> stroke(* opt? *) -> fill(* opt? *) ->  <
getElement : unit;
setPath : path -> unit;
> = "goog.graphics.VmlPathElement"

class external vmlTextElement 
inherit textElement: element -> vmlGraphics -> stroke(* opt? *) -> fill(* opt? *) ->  <
getElement : unit;
setText : string -> unit;
> = "goog.graphics.VmlTextElement"

class external vmlImageElement 
inherit imageElement: element -> vmlGraphics ->  <
getElement : unit;
setPosition : number -> number -> unit;
setSize : number -> number -> unit;
setSource : string -> unit;
> = "goog.graphics.VmlImageElement"
