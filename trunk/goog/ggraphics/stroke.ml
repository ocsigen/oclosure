(**
   OClosure Project - 2010

   Class goog.graphics.Stroke
   
   @author : Oran Charles
   @version 0.2
 *)
open Js
open Tools

class type stroke = object 

  method getWidth : (int, js_string t) Union.t meth

  method getColor : js_string t meth
end

let stroke : ((int, js_string t) Union.t opt -> js_string t -> stroke t) constr =
  Js.Unsafe.variable "goog.graphics.Stroke"


