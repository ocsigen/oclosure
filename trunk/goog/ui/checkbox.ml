(** 
   OClosure Project - 2010
   Class goog.ui.CheckBox
   
   3-state checkbox widget. Fires CHECK or UNCHECK events before toggled and
   CHANGE event after toggled by user.
   The checkbox can also be enabled/disabled and get focused and highlighted.
   
   @author : Emmanuel CRESPIN
   @version 0.2
*)

open Control

open Js
class type checkbox = object
  inherit control
  method getChecked : bool t opt meth

  method isChecked : bool t meth
    
  method isEnabled : bool t meth
  
  method isUnchecked : bool t meth

  method isUndetermined : bool t meth
    
  method setChecked_ : bool t opt -> unit meth
    
  method setLabel : Dom_html.element t -> unit meth
    
  method toggle : unit meth
    
  method createDom : unit meth
    
  method decorateInternal : Dom_html.element t -> unit meth
    
  method enterDocument : unit meth

  method setEnabled : bool t -> unit meth
end

let checkbox : (bool t opt -> checkbox t) constr =
  Js.Unsafe.variable "goog.ui.Checkbox"
