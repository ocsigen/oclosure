(**
   OClosure Project - 2010
   Class goog.ui.ColorMenuButtonRenderer
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

open ColorMenuButton

class type ['but] colorMenuButtonRenderer = object
  inherit ['but] MenuButtonRenderer.menuButtonRenderer

  method createCaption : ControlContent.controlContent -> Gdom.domHelper t -> Dom_html.element t meth

  method initializeDom : 'but t -> unit meth

  method setValue : #Dom_html.element t -> js_string t -> unit meth
end

let colorMenuButtonRenderer : (colorMenuButton colorMenuButtonRenderer t) constr
    = Js.Unsafe.variable "goog.ui.ColorMenuButtonRenderer"
