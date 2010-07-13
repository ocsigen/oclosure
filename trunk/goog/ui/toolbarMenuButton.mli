(**
   OClosure Project - 2010
   Class goog.ui.ToolbarMenuButton
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type toolbarMenuButton = object
  inherit MenuButton.menuButton
end

val toolbarMenuButton : (ControlContent.controlContent -> Menu.menu t opt -> 
  toolbarMenuButton #Button.buttonRenderer t opt -> Gdom.domHelper t opt -> 
    toolbarMenuButton t) constr
