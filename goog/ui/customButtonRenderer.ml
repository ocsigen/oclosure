(**
   OClosure Project - 2010
   Class goog.ui.CustomButtonRenderer
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type ['but] customButtonRenderer = object
  inherit ['but] Button.buttonRenderer

  method canDecorate : #Dom_html.element t -> bool t meth

  method createButton : ControlContent.controlContent -> Gdom.domHelper t -> Dom_html.element t meth

  method createDom : 'but t -> Dom_html.element t meth

  method decorate : 'but t -> #Dom_html.element t -> Dom_html.element t meth

  method getContentElement : #Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth
end

let tmp = Js.Unsafe.variable "goog.ui.CustomButtonRenderer"
let customButtonRenderer : (#Button.button customButtonRenderer t) constr = tmp

