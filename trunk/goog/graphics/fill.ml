(**
   OClosure Project - 2010

   Class goog.graphics.Fill
   
   @author : Oran Charles
   @version 0.2 
*)
open Js

class type fill = object
end

(** Creates a fill object
    @constructor *)
let fill : fill t constr = 
  Js.Unsafe.variable "goog.graphics.Fill" 
