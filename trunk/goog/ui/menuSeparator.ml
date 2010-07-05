(**
   OClosure Project - 2010
   Class goog.ui.MenuSeparator
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type menuSeparator = object
  inherit Separator.separator
end

let menuSeparator : (Gdom.domHelper t opt -> menuSeparator t) constr = 
  Js.Unsafe.variable "goog.ui.MenuSeparator"
