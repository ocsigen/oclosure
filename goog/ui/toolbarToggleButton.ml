(**
   OClosure Project - 2010
   Class goog.ui.ToolbarToggleButton
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type toolbarToggleButton = object
  inherit ToggleButton.toggleButton
end

let tmp = Js.Unsafe.variable "goog.ui.ToolbarToggleButton"
let toolbarToggleButton : 
    (ControlContent.controlContent 
     -> toolbarToggleButton #ToolbarButtonRenderer.toolbarButtonRenderer t opt
     -> Gdom.domHelper t opt -> toolbarToggleButton t) constr = tmp
