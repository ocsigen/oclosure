(** 
   OClosure Project - 2010
   Class goog.ui.Prompt
   
   Creates an object that represents a prompt 
   (used in place of javascript's prompt). 
   The html structure of the prompt is the same as the layout for dialog.js 
   except for the addition of a text box which is placed inside 
   the "Content area" and has the default class-name 'modal-dialog-userInput' 
   
   @author Cardoso Gabriel, Bozman Cagdas 
   @version 0.2
*)
open Dialog

open Js
class type prompt = object
  inherit dialog
  method getCols : int meth
  method getRows : int meth
  method setCols : int -> unit meth
  method setDefaultValue : js_string t -> unit meth
  method setRows : int -> unit meth
  method setVisible : bool t -> unit meth
end

let prompt : (js_string t -> js_string t -> (js_string t opt -> bool t) callback
  -> prompt t) constr = Js.Unsafe.variable "goog.ui.Prompt"
  
