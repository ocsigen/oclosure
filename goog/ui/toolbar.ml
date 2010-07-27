(**
   OClosure Project - 2010
   Class goog.ui.Toolbar
   
   @author Cardoso Gabriel
   @version 0.2
*)
open Container

open Js
class type toolbar = object
  inherit container
end

class type ['cont] toolbarRenderer = object
  inherit ['cont] containerRenderer
  method getAriaRole : Gdom.A11y.role_pre optdef meth
  method getDecoratorForChild : #Dom_html.element t 
    -> Control.control t opt meth
  method getCssClass : js_string t meth
  method getDefaultOrientation : Container.orientation_pre meth
end

let tmp = Js.Unsafe.variable "goog.ui.ToolbarRenderer"
let toolbarRenderer : (toolbar #toolbarRenderer t) constr = tmp

let tmp = Js.Unsafe.variable "goog.ui.Toolbar"
let toolbar : (toolbar #toolbarRenderer t opt -> Container.orientation_pre opt 
  -> Gdom.domHelper t opt -> toolbar t) constr = tmp
