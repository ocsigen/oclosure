(**
   OClosure Project - 2010
   Class goog.fx.AnimationParallelQueue
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type animationParallelQueue = object
  inherit AnimationQueue.animationQueue

(**
   Add an animation to the queue.
   @param animation The animation to add.
*)
  method add : #Animation.animation t -> unit meth

(**
   Calls a function on the children in implementation specific order.
   @param f The function that will be called on
   the children animation.
*)
  method executeChildrenAction : (#Animation.animation t -> unit) -> unit meth

(**
   Play all on begin.
*)
  method onBegin : unit meth

(**
   Remove an Animation from the queue.
   @param animation The animation to remove.
*)
  method remove : #Animation.animation t -> unit meth 
end

(**
   Constructor for AnimationParallelQueue object.
*)
val animationParallelQueue : (animationParallelQueue t) constr
