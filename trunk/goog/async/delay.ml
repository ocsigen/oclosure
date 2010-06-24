(**
   OClosure Project - 2010
   Class goog.async.Delay
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type delay = object
  inherit Disposable.disposable

  method disposeInternal : unit meth

  method fire : unit meth

  method fireIfActive : unit meth

  method isActive : bool t meth

(**
   Starts the delay timer. The provided listener function will be called after 
   the specified interval. Calling start on an active timer will reset the 
   delay interval.
   code 
*)
  method start : number t opt -> unit meth

  method stop : unit meth
end

let delay : ((unit -> unit) -> number t opt -> 'a t opt -> delay t) constr = 
  Js.Unsafe.variable "goog.async.Delay"