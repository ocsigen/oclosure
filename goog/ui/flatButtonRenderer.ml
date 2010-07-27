(**
   OClosure Project - 2010
   Class goog.ui.FlatButtonRenderer
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type ['but] flatButtonRenderer = object
  inherit ['but] Button.buttonRenderer

  method canDecorate : #Dom_html.element t -> bool t meth

  method createDom : 'but t -> Dom_html.element t meth

  method decorate : 'but t -> #Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth

end

let tmp = Js.Unsafe.variable "goog.ui.FlatButtonRenderer"
let flatButtonRenderer : (#Button.button flatButtonRenderer t) constr = tmp
  
