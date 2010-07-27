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

let ibr = Tools.variable "[oclosure]goog.ui.ImagelessButtonRenderer[/oclosure]"
let imagelessButtonRenderer : 
    (#Button.button imagelessButtonRenderer t) constr = ibr

module ImagelessButtonRenderer = struct
  let getInstance () = ibr##getInstance()
end
