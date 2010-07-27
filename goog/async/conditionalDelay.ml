(**
   OClosure Project - 2010
   Class goog.async.ConditionalDelay
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type conditionalDelay = object
  inherit Disposable.disposable

  method isActive : bool t meth

  method isDone : bool t meth

  method onFailure : unit meth

  method onSuccess : unit meth

  method start : number t -> number t -> unit meth

  method stop : unit meth  
end

let conditionalDelay = Js.Unsafe.variable "goog.async.ConditionalDelay"
let conditionalDelay : ((unit -> bool t) callback -> 'a t opt -> conditionalDelay t) constr = conditionalDelay
