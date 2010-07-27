(**
   OClosure Project - 2010

   Class goog.graphics.Stroke
   
   @author : Oran Charles
   @version 0.2
 *)
open Js
open Tools

class type stroke = object 

  (** @return The width of this stroke. *)
  method getWidth : (int, js_string t) Union.t meth

  (** @return The color of this stroke. *)
  method getColor : js_string t meth
end

(** Creates an immutable stroke object.
    @param width The width of the stroke.
    @param color The color of the stroke.
    @constructor *)
let stroke : ((int, js_string t) Union.t opt -> js_string t -> stroke t) constr =
  Js.Unsafe.variable "goog.graphics.Stroke"


