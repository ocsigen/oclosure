open Control

open Js
class type button = object
  inherit control
end

let button : button t constr =
  Js.Unsafe.variable "goog.ui.Button"
