(**
   OClosure Project - 2010
   Tools module
   
   Provide some tools for the OClosure library
   
   @author : Cardoso Gabriel
   @version 0.2
*)

type element_or_id 
type element = Dom_html.element

let elt : element Js.t -> element_or_id = Obj.magic
let id : Js.js_string Js.t -> element_or_id = Obj.magic

