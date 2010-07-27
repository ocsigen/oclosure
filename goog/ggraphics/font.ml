(**
   OClosure Project - 2010

   Class goog.graphics.Font
   
   @author : Oran Charles
   @version 0.2
 *)
open Js

class type font = object 

  method bold : js_string t meth

  method italic : js_string t meth
end

let font : (int -> js_string t -> font t) constr =
  Js.Unsafe.variable "goog.graphics.Font"
