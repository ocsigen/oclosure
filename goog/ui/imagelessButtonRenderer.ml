(**
   OClosure Project - 2010
   Class goog.ui.ImagelessButtonRenderer
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

class type ['but] imagelessButtonRenderer = object
  inherit ['but] CustomButtonRenderer.customButtonRenderer

  method createButton : ControlContent.controlContent -> Gdom.domHelper t 
    -> Dom_html.element t meth

  method createDom : 'but t -> Dom_html.element t meth

  method getContentElement : #Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth
end

let tmp = Js.Unsafe.variable "goog.ui.ImagelessButtonRenderer"
let imagelessButtonRenderer : 
    (#Button.button imagelessButtonRenderer t) constr = tmp

module ImagelessButtonRenderer = struct
  let getInstance () = Js.Unsafe.fun_call 
    (Js.Unsafe.variable "goog.ui.imagelessButtonRenderer.getInstance") [||]
end
