(**
   OClosure Project - 2010
   Class goog.ui.ComboBoxItem
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type comboBoxItem = object
  inherit MenuItem.menuItem

  method setSticky : bool t -> unit meth

  method isSticky : unit -> bool t meth

  method setFormatFromToken : js_string t -> js_string t meth
end

let comboBoxItem : (js_string t -> comboBoxItem t) constr = 
  Js.Unsafe.variable "goog.ui.ComboBoxItem"
