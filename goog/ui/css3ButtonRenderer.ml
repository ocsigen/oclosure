(**
   OClosure Project - 2010
   Class goog.ui.Css3ButtonRenderer
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type ['but] css3ButtonRenderer = object
  inherit ['but] Button.buttonRenderer

  method canDecorate : #Dom_html.element t -> bool t meth

  method createDom : 'but t -> Dom_html.element t meth

  method decorate : 'but t -> #Dom_html.element t -> Dom_html.element t meth

  method getContentElement : #Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth
end

let tmp = Js.Unsafe.variable "goog.ui.Css3ButtonRenderer"
let css3ButtonRenderer : (#Button.button css3ButtonRenderer t) constr = tmp 

