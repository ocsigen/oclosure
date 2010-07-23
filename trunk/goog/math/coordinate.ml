(** OClosure Project - 2010
   Class goog.math.Coordinate
     
   @author : Emmanuel CRESPIN
   @version 0.1
 *)

open Js
class type coordinate = object
  method clone : coordinate t meth
  method toString : js_string t meth
  method equals : coordinate t -> coordinate t -> bool meth
  method distance : coordinate t -> coordinate t -> float meth
  method squaredDistance : coordinate t -> coordinate t -> float t meth
  method difference : coordinate t -> coordinate t -> coordinate t meth
  method sum : coordinate t -> coordinate t -> coordinate t meth
end

let coordinate : (float opt -> float opt -> coordinate t) constr =
  Js.Unsafe.variable "goog.math.Coordinate"
