(**
   OClosure Project - 2010
   Class goog.ui.ToggleButton
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type toggleButton = object
  inherit Button.button
end

let toggleButton : (ControlContent.controlContent -> Button.buttonRenderer t opt -> Gdom.domHelper t opt -> toggleButton t) constr = 
  Js.Unsafe.variable "goog.ui.ToggleButton"
