(** 
   OClosure Project - 2010
   Class goog.ui.Checkbox
   
   @author Emmanuel CRESPIN
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
    
  method setLabel : #Dom_html.element t -> unit meth
    
  method toggle : unit meth
    
  method createDom : unit meth
    
  method decorateInternal : #Dom_html.element t -> unit meth
    
  method enterDocument : unit meth

  method setEnabled : bool t -> unit meth
end

let checkbox : (bool t opt -> checkbox t) constr =
  Tools.variable "[oclosure]goog.ui.Checkbox[/oclosure]"
