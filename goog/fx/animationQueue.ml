(**
   OClosure Project - 2010
   Class goog.fx.AnimationQueue
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type animationQueue = object
  inherit Animation.animation

  method add : #Animation.animation t -> unit meth

  method remove : #Animation.animation t -> unit meth
end

let animationQueue : (animationQueue t) constr = 
  Js.Unsafe.variable "goog.fx.AnimationQueue"
