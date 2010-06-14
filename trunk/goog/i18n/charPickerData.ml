(**
   * OClosure Project - 2010
   * Class goog.i18n.CharPickerData
   *
   * Object holding two level character organization and character listing.
   * 
   * @author : Oran Charles
   * @version 0.1
*)

open Js
class type charPickerData = object
    
end

let charPickerData : (unit -> charPickerData t) constr =
  Js.Unsafe.variable "goog.i18n.CharPickerData"
