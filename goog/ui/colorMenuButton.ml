(**
   OClosure Project - 2010
   Class goog.ui.ColorMenuButton
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

class type colorMenuButton = object
  inherit MenuButton.menuButton

  method getSelectedColor : js_string t opt meth

  method handleMenuAction_ : Events.event t -> unit meth

  method setOpen : bool t -> unit meth

  method setSelectedColor : js_string t opt -> unit meth

  method setValue : js_string t opt -> unit meth
end


let tmp = Tools.variable "[oclosure]goog.ui.ColorMenuButton[/oclosure]"
let colorMenuButton : (ControlContent.controlContent -> Menu.menu t opt -> 
colorMenuButton #MenuButtonRenderer.menuButtonRenderer t opt ->
Gdom.domHelper t -> colorMenuButton t) constr = tmp
