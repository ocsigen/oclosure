(**
   OClosure Project - 2010
   Class goog.math.Size
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type size = object
  method width : int prop
  method height : int prop
end

let size : (int -> int -> size t) constr = 
  Js.Unsafe.variable "goog.math.Size"
