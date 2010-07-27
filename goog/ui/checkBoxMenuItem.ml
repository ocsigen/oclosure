(**
   OClosure Project - 2010
   Class goog.ui.CheckBoxMenuItem
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type checkBoxMenuItem = object
    inherit MenuItem.menuItem
end

let checkBoxMenuItem : (ControlContent.controlContent -> checkBoxMenuItem t) constr = 
  Js.Unsafe.variable "goog.ui.CheckBoxMenuItem"
