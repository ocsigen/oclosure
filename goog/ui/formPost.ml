(**
   OClosure Project - 2010
   Class goog.ui.FormPost
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type formPost = object
  inherit Component.component 

  method createDom : unit meth

(*  method post : param -> js_string t opt -> js_string t opt -> unit meth*)
end

let formPost : (formPost t) constr = 
  Js.Unsafe.variable "goog.ui.FormPost"
