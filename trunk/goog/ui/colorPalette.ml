(** 
    OClosure Project - 2010
    Class goog.ui.ColorPalette
    
    Create a new, empty color picker. 
    
    @author Bozman Cagdas
    @version 0.1
*)
open Palette

open Js
class type colorPalette = object
  inherit palette
end

let colorPalette : colorPalette t constr =
  Js.Unsafe.variable "goog.ui.ColorPalette"
