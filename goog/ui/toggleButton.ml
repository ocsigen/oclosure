(**
   OClosure Project - 2010
   Class goog.ui.ToggleButton
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type toggleButton = object
  inherit Button.button
end

let tmp = Tools.variable "[oclosure]goog.ui.ToggleButton[/oclosure]"
let toggleButton : (ControlContent.controlContent 
		    -> toggleButton #Button.buttonRenderer t opt 
		    -> Gdom.domHelper t opt -> toggleButton t) constr = tmp
