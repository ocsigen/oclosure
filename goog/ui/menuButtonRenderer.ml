(**
   OClosure Project - 2010
   Class goog.ui.MenuButtonRenderer
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

class type ['but] menuButtonRenderer = object
  inherit ['but] CustomButtonRenderer.customButtonRenderer
  method createButton : ControlContent.controlContent -> Gdom.domHelper t 
    -> Dom_html.element t meth
  method createCaption : ControlContent.controlContent -> Gdom.domHelper t 
    -> Dom_html.element t meth
  method createDropdown : Gdom.domHelper t -> Dom_html.element t meth
  method decorate : 'but t -> #Dom_html.element t -> Dom_html.element t meth
  method getContentElement : #Dom_html.element t -> Dom_html.element t meth
  method getCssClass : js_string t meth
  method setContent : #Dom_html.element t -> ControlContent.controlContent 
    -> unit meth
end

let mbr = Tools.variable "[oclosure]goog.ui.MenuButtonRenderer[/oclosure]"
let menuButtonRenderer : (#MenuButton.menuButton menuButtonRenderer t) constr = 
  mbr

module MenuButtonRenderer = struct
  let getInstance () = mbr##getInstance()
end
