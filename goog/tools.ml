(**
   Tools module
   
   Provide some tools for the OClosure library
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

module Union = struct
  type (+'a, +'b) t
  let i1 : 'a -> ('a, 'b) t = Obj.magic
  let i2 : 'b -> ('a, 'b) t = Obj.magic 
end

let variable s = Js.Unsafe.pure_expr 
    (fun () -> Js.Unsafe.variable (String.sub s 10 (String.length s - 21)))
