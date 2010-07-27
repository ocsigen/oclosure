(**
   OClosure Project - 2010
   
   Class goog.i18n.CharPickerData

   @author : Oran Charles
   @version 0.2
*)

open Js
class type charPickerData = object
  method categories : js_string t js_array t prop

  method charList : js_string t js_array t js_array t prop 

  method subcategories : js_string t js_array t js_array t prop     
end

let charPickerData : charPickerData t constr =
  Tools.variable "[oclosure]goog.i18n.CharPickerData[/oclosure]"
