(**
   OClosure Project - 2010
   Class goog.ui.IdGenerator
   
   @author Cardoso Gabriel
   @version 0.2
*)
open Js

class type idGenerator = object
  method getNexUniqueId : js_string t meth
end

let idGenerator : idGenerator t constr = 
  Js.Unsafe.variable "goog.ui.IdGenerator"

module IdGenerator = struct
  let getInstance ()= Js.Unsafe.fun_call 
    (Js.Unsafe.variable "goog.ui.IdGenerator.getInstance") [||]
end
