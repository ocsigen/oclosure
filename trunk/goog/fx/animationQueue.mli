(**
   OClosure Project - 2010
   Class goog.fx.AnimationQueue
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type animationQueue = object
  inherit Animation.animation

(**
   Push an Animation to the end of the queue.
   @param animation The animation to add to the queue.
*)
  method add : #Animation.animation t -> unit meth

(**
   Remove an Animation from the queue.
   @param animation The animation to remove.
*)
  method remove : #Animation.animation t -> unit meth
end

(**
   Constructor for AnimationQueue object.
*)
val animationQueue : (animationQueue t) constr
