(** 
   OClosure Project - 2010
   Class goog.ui.Dialog
   
   @author Cardoso Gabriel
   @author Bozman Cagdas
   @version 0.1
*)
open Component
  
open Js
class type dialog = object
  inherit component
  method setContent : js_string t -> unit meth
 
  method setTitle : js_string t -> unit meth

  method setVisible : bool t -> unit meth
end

let dialog : (js_string opt -> bool t opt -> Gdom.domHelper t opt -> dialog t) constr =
  Js.Unsafe.variable "goog.ui.Dialog"
