(**
   OClosure Project - 2010
   Class goog.ui.ToolbarMenuButton
   
   @author : 
   @version 0.2
*)

open Js

class type toolbarMenuButton = object
  inherit MenuButton.menuButton
end

let toolbarMenuButton : (ControlContent.controlContent -> Menu.menu t opt -> ButtonRenderer.buttonRenderer t opt -> Gdom.domHelper t opt -> toolbarMenuButton t) constr = 
  Js.Unsafe.variable "goog.ui.ToolbarMenuButton"
