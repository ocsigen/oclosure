open Button

open Js
class type toolbarButton = object
  inherit button
end

let toolbarButton : (ControlContent.controlContent -> ButtonRenderer.buttonRenderer t opt -> Gdom.domHelper t opt -> toolbarButton t) constr =
  Js.Unsafe.variable "goog.ui.ToolbarButton"
