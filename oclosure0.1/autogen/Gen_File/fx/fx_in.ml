
(** 
    * OClosure Project - 2010
    * Class goog.fx.easing, goog.fx.AnimationEvent, goog.fx.Animation.State, goog.fx.Animation.EventType, goog.fx.Animation, goog.fx
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Object  (* goog.object *)
open EventTarget  (* goog.events.EventTarget *)
open Event  (* goog.events.Event *)
open Array  (* goog.array *)
open Timer  (* goog.Timer *)

class external tIMEOUT :  <
easeIn : number -> number;
easeOut : number -> number;
inAndOut : number -> number;
> = "goog.fx.TIMEOUT"

class external animation 
inherit eventTarget: (* Array[number] *) -> (* Array[number] *) -> number -> function(* opt? *) ->  <
registerAnimation : object -> unit;
unregisterAnimation : object -> unit;
play : boolean(* opt? *) -> boolean;
stop : boolean -> unit;
pause : unit;
disposeInternal : unit;
destroy : unit;
cycle : number -> unit;
onAnimate : unit;
onBegin : unit;
onDestroy : unit;
onEnd : unit;
onFinish : unit;
onPause : unit;
onPlay : unit;
onResume : unit;
onStop : unit;
> = "goog.fx.Animation"

class external animationEvent 
inherit event: string -> animation ->  <
coordsAsInts : (* Array[number] *);
> = "goog.fx.AnimationEvent"
