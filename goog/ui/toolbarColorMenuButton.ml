(**
   OClosure Project - 2010

   Class goog.ui.ToolbarColorMenuButton
   Class goog.ui.ToolbarColorMenuButtonRenderer
   
   @author Oran Charles
   @version 0.2
*)
open Js
open ToolbarMenuButtonRenderer
open ColorMenuButton

class type toolbarColorMenuButton = object
  inherit colorMenuButton
end

class type ['but] toolbarColorMenuButtonRenderer = object
  inherit ['but] toolbarMenuButtonRenderer
  method createCaption : ControlContent.controlContent -> Gdom.domHelper t -> Dom_html.element t meth
  method setValue : #Dom_html.element t -> js_string t -> unit meth
  method initializeDom : ColorMenuButton.colorMenuButton t -> unit meth
end

let tmp = Js.Unsafe.variable "goog.ui.ToolbarColorMenuButton"
let toolbarColorMenuButton : (ControlContent.controlContent -> Menu.menu t opt -> ColorMenuButton.colorMenuButton #ColorMenuButtonRenderer.colorMenuButtonRenderer t -> Gdom.domHelper t -> toolbarColorMenuButton t) constr = 
  tmp

let tmp = Js.Unsafe.variable "goog.ui.ToolbarColorMenuButton"
let toolbarColorMenuButtonRenderer : (toolbarColorMenuButton #toolbarColorMenuButtonRenderer t) constr =
  tmp 
  
