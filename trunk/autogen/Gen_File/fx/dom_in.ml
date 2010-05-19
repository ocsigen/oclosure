
(** 
    * OClosure Project - 2010
    * Class goog.fx.dom.Swipe, goog.fx.dom.SlideFrom, goog.fx.dom.Slide, goog.fx.dom.Scroll, goog.fx.dom.ResizeWidth, goog.fx.dom.ResizeHeight, goog.fx.dom.Resize, goog.fx.dom.PredefinedEffect, goog.fx.dom.FadeOutAndHide, goog.fx.dom.FadeOut, goog.fx.dom.FadeInAndShow, goog.fx.dom.FadeIn, goog.fx.dom.Fade, goog.fx.dom.ColorTransform, goog.fx.dom.BgColorTransform, goog.fx.dom
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Style  (* goog.style *)
open EventType  (* goog.fx.Animation.EventType *)
open Animation  (* goog.fx.Animation *)
open Events  (* goog.events *)
open Color  (* goog.color *)

class external predefinedEffect 
inherit animation: element -> (* Array[number] *) -> (* Array[number] *) -> number -> function(* opt? *) ->  <
updateStyle : unit;
onAnimate : unit;
onEnd : unit;
onBegin : unit;
> = "goog.fx.dom.PredefinedEffect"

class external slide 
inherit predefinedEffect: element -> (* Array[number] *) -> (* Array[number] *) -> number -> function(* opt? *) ->  <
updateStyle : unit;
> = "goog.fx.dom.Slide"

class external slideFrom 
inherit slide: element -> (* Array[number] *) -> number -> function(* opt? *) ->  <
onBegin : unit;
> = "goog.fx.dom.SlideFrom"

class external swipe 
inherit predefinedEffect: element -> (* Array[number] *) -> (* Array[number] *) -> number -> function(* opt? *) ->  <
updateStyle : unit;
> = "goog.fx.dom.Swipe"

class external scroll 
inherit predefinedEffect: element -> (* Array[number] *) -> (* Array[number] *) -> number -> function(* opt? *) ->  <
updateStyle : unit;
> = "goog.fx.dom.Scroll"

class external resize 
inherit predefinedEffect: element -> (* Array[number] *) -> (* Array[number] *) -> number -> function(* opt? *) ->  <
updateStyle : unit;
> = "goog.fx.dom.Resize"

class external resizeWidth 
inherit predefinedEffect: element -> number -> number -> number -> function(* opt? *) ->  <
updateStyle : unit;
> = "goog.fx.dom.ResizeWidth"

class external resizeHeight 
inherit predefinedEffect: element -> number -> number -> number -> function(* opt? *) ->  <
updateStyle : unit;
> = "goog.fx.dom.ResizeHeight"

class external fade 
inherit predefinedEffect: element -> (* Array[number] *)(* | number *) -> (* Array[number] *)(* | number *) -> number -> function(* opt? *) ->  <
updateStyle : unit;
show : unit;
hide : unit;
> = "goog.fx.dom.Fade"

class external fadeOut 
inherit fade: element -> number -> function(* opt? *) ->  <
> = "goog.fx.dom.FadeOut"

class external fadeIn 
inherit fade: element -> number -> function(* opt? *) ->  <
> = "goog.fx.dom.FadeIn"

class external fadeOutAndHide 
inherit fade: element -> number -> function(* opt? *) ->  <
onBegin : unit;
onEnd : unit;
> = "goog.fx.dom.FadeOutAndHide"

class external fadeInAndShow 
inherit fade: element -> number -> function(* opt? *) ->  <
onBegin : unit;
> = "goog.fx.dom.FadeInAndShow"

class external bgColorTransform 
inherit predefinedEffect: element -> (* Array[number] *) -> (* Array[number] *) -> number -> function(* opt? *) ->  <
setColor : unit;
updateStyle : unit;
bgColorFadeIn : element -> (* Array[number] *) -> number -> unit;
> = "goog.fx.dom.BgColorTransform"

class external colorTransform 
inherit predefinedEffect: element -> (* Array[number] *) -> (* Array[number] *) -> number -> function(* opt? *) ->  <
updateStyle : unit;
> = "goog.fx.dom.ColorTransform"
