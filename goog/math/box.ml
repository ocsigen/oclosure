(**
   OClosure Project - 2010
   Class goog.math.Box
   
   @author : 
   @version 0.2
*)

open Js

class type box = object
  method clone : box t meth
  method contains : box t -> bool t meth
  method expand : int -> int opt -> int opt -> int opt -> box t meth
  method toString : js_string t meth
end

let box : (int -> int -> int -> int -> box t) constr = 
  Js.Unsafe.variable "goog.math.Box"
