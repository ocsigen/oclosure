(**
   OClosure Project - 2010
   Class goog.ui.Combobox
 
   A ComboBox control.
  
   @author : Cardoso Gabriel
   @version 0.1
*)

open Js
open Component

class type comboBox = object
  inherit component

  method addItem : #Control.control t -> unit meth

  method addItemAt : #Control.control t -> int -> unit meth
 
  method setDefaultText : js_string t -> unit meth

  method getDefaultText : js_string t meth

  method enterDocument : unit meth

  method exitDocument : unit meth
 
  method canDecorate : #Dom_html.element t -> bool t meth
  
  method disposeInternal : unit meth
  
  method dissmiss : unit meth
  
  method removeItem : #MenuItem.menuItem t -> unit meth
  
  method removeAllItems : unit meth
  
  method removeItemAt : int -> unit meth
  
  method getItemAt : int -> MenuItem.menuItem t meth
 
  method getFieldName : js_string t meth
 
  method setUseDropdownArrow : bool t -> unit meth
 
  method setValue : js_string t -> unit meth
 
  method getValue : js_string t meth
end

let comboBox : (Gdom.domHelper t opt -> comboBox t) constr = 
  Js.Unsafe.variable "goog.ui.ComboBox"
