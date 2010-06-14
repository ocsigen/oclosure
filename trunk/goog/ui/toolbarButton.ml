open Button

open Js
class type toolbarButton = object
  inherit button
end

let toolbarButton : (js_string t -> toolbarButton t) constr =
  Js.Unsafe.variable "goog.ui.ToolbarButton"
