(**
   OClosure Project - 2010
   Tools module
   
   Provide some tools for the OClosure library
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

module Union : sig
  type (+'a, +'b) t
  val i1 : 'a -> ('a, 'b) t
  val i2 : 'b -> ('a, 'b) t
end

(*
let require (s : js_string t) : unit = Js.Unsafe.fun_call
    (Js.Unsafe.variable "goog.require")
    [|Js.Unsafe.inject s|]
*)
