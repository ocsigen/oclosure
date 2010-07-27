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

let idg = Tools.variable "[oclosure]goog.ui.IdGenerator[/oclosure]" 
let idGenerator : idGenerator t constr = idg

module IdGenerator = struct
  let getInstance ()= idg##getInstance()
end
