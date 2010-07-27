(**
   OClosure Project - 2010
   Class goog.ui.BidiInput
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

class type bidiInput = object
  inherit Component.component

  method disposeInternal : unit meth

  method getDirection : js_string t opt meth
   
  method getValue : js_string t meth

  method setValue : js_string t -> unit meth
end

let bidiInput : (Gdom.domHelper t opt -> bidiInput t) constr = 
  Js.Unsafe.variable "goog.ui.BidiInput"
