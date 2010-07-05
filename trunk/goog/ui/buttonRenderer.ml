(**
   OClosure Project - 2010
   Class goog.ui.ButtonRenderer
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type buttonRenderer = object
  inherit ControlRenderer.controlRenderer

  method createDom : #Control.control t -> Dom_html.element t meth

  method decorate : #Control.control t -> Dom_html.element t -> Dom_html.element t meth

  method getAriaRole : Gdom.A11y.role_pre optdef -> unit meth

  method getCssClass : js_string t meth

  method getTooltip : Dom_html.element t -> js_string t optdef meth

  method getValue : js_string t optdef meth
end

let buttonRenderer : buttonRenderer t constr = 
  Js.Unsafe.variable "goog.ui.ButtonRenderer"
