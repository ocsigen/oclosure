(**
   OClosure Project - 2010
   Class goog.fx.Animation
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type animation = object
  inherit Events.eventTarget

  method cycle : float -> unit meth

  method disposeInternal : unit meth

  method pause : unit meth

  method play : bool t opt -> bool t meth

  method stop : bool t -> unit meth  
end

let animation : (int js_array t -> int js_array t -> int -> 
  (float t -> float t) opt -> animation t) constr = 
  Js.Unsafe.variable "goog.fx.Animation"
