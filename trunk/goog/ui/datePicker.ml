(** 
    * OClosure Project - 2010
    * Class goog.ui.DatePicker
    *
    * DatePicker widget. 
    * Allows a single date to be selected from a calendar like view.
    * 
    * @author Bozman Cagdas
    * @version 0.1
    * @see 'goog.ui.Component' 
*)

open Component

open Js
class type datePicker = object
  inherit component

end

let datePicker : datePicker t constr =
  Js.Unsafe.variable "goog.ui.DatePicker"
