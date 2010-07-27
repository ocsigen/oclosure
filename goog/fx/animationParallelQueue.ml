(**
   OClosure Project - 2010
   Class goog.fx.AnimationParallelQueue
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type animationParallelQueue = object
  inherit AnimationQueue.animationQueue

  method add : #Animation.animation t -> unit meth

  method executeChildrenAction : (#Animation.animation t -> unit) -> unit meth

  method onBegin : unit meth

  method remove : #Animation.animation t -> unit meth 
end

let animationParallelQueue : (animationParallelQueue t) constr = 
  Tools.variable "[oclosure]goog.fx.AnimationParallelQueue[/oclosure]"
