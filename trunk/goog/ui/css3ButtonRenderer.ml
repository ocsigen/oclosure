(**
   OClosure Project - 2010
   Class goog.ui.Css3ButtonRenderer
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type css3ButtonRenderer = object
  inherit Button.buttonRenderer

  method canDecorate : Dom_html.element t -> bool t meth

  method createDom_ : Button.button t -> Dom_html.element t meth

  method decorate_ : Button.button t -> Dom_html.element t -> Dom_html.element t meth

  method getContentElement : Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth
end

let css3ButtonRenderer : (css3ButtonRenderer t) constr = 
  Js.Unsafe.variable "goog.ui.Css3ButtonRenderer"
