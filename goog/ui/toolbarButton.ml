(**
   OClosure Project - 2010
   Class goog.ui.ToolbarButton
   
   @author Cardoso Gabriel
   @version 0.2
*)


open Button

open Js
class type toolbarButton = object
  inherit button
end

let tmp = Tools.variable "[oclosure]goog.ui.ToolbarButton[/oclosure]"
let toolbarButton : (ControlContent.controlContent 
		     -> toolbarButton #buttonRenderer t opt 
		     -> Gdom.domHelper t opt -> toolbarButton t) constr = tmp

