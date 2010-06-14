open Container

open Js
class type toolbar = object
  inherit container
end

let toolbar : toolbar t constr =
  Js.Unsafe.variable "goog.ui.Toolbar"
