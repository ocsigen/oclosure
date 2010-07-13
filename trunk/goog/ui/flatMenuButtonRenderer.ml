(**
   OClosure Project - 2010
   Class goog.ui.FlatMenuButtonRenderer
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type ['but] flatMenuButtonRenderer = object
  inherit ['but] FlatButtonRenderer.flatButtonRenderer

  method createCaption : ControlContent.controlContent -> Gdom.domHelper t 
      -> Dom_html.element t meth

  method createDom : 'but t -> Dom_html.element t meth

  method createDropdown : Gdom.domHelper t -> Dom_html.element t meth

  method decorate : 'but t -> #Dom_html.element t 
    -> Dom_html.element t meth

  method getContentElement : #Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth
end

let tmp = Js.Unsafe.variable "goog.ui.FlatMenuButtonRenderer"
let flatMenuButtonRenderer : (#Button.button flatMenuButtonRenderer t) constr = 
  tmp
