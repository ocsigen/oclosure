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

let toolbarToggleButton : (ControlContent.controlContent -> (*ToolbarButtonRenderer.toolbarButtonRenderer t opt -> Gdom.domHelper t opt -> *)toolbarToggleButton t) constr =
  Js.Unsafe.variable "goog.ui.ToolbarToggleButton"
