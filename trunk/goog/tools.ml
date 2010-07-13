(**
   OClosure Project - 2010
   Tools module
   
   Provide some tools for the OClosure library
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

module Union = struct
  type (+'a, +'b) t
  let i1 : 'a -> ('a, 'b) t = Obj.magic
  let i2 : 'b -> ('a, 'b) t = Obj.magic 
end

let require (s : js_string t) : unit = Js.Unsafe.fun_call
    (Js.Unsafe.variable "goog.require")
    [|Js.Unsafe.inject s|]
