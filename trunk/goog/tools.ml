(**
   OClosure Project - 2010
   Tools module
   
   Provide some tools for the OClosure library
   
   @author : Cardoso Gabriel
   @version 0.2
*)

module Union = struct
  type ('a, 'b) t
  let i1 : 'a -> ('a, 'b) t = Obj.magic
  let i2 : 'b -> ('a, 'b) t = Obj.magic 
end
