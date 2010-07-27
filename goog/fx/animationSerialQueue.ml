(**
   OClosure Project - 2010
   Class goog.fx.AnimationSerialQueue
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type animationSerialQueue = object
  inherit AnimationQueue.animationQueue

  method add : #Animation.animation t -> unit meth

  method executeChildrenAction : (#Animation.animation t -> unit) -> unit meth

  method onBegin : unit meth

  method onEnd : unit meth

  method remove : #Animation.animation t -> unit meth 
end

let animationSerialQueue : (animationSerialQueue t) constr = 
  Tools.variable "[oclosure]goog.fx.AnimationSerialQueue[/oclosure]"
