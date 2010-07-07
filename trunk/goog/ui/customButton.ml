(**
   OClosure Project - 2010
   Class goog.ui.CustomButton
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type customButton = object
  inherit Button.button
end

let customButton = Js.Unsafe.variable "goog.ui.CustomButton"
let customButton : (ControlContent.controlContent -> #Button.buttonRenderer t opt -> Gdom.domHelper t opt -> customButton t) constr = customButton

