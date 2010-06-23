(** 
    * OClosure Project - 2010
    * Class goog.ui.Prompt
    *
    * Creates an object that represents a prompt 
    * (used in place of javascript's prompt). 
    * The html structure of the prompt is the same as the layout for dialog.js 
    * except for the addition of a text box which is placed inside 
    * the "Content area" and has the default class-name 'modal-dialog-userInput' 
    *
    * @author Bozman Cagdas 
    * @author Cardoso Gabriel 
    * @version 0.1
    * @see 'goog.ui.Dialog'
*)
open Dialog

(** Number **)
type number

open Js
class type prompt = object
  inherit dialog
  (** Return the number of cols in the user input element. *)
  method getCols : number meth
 
 (** Return the number of rows in the user input element. *)
  method getRows : number meth
 
 (** Set the number of cols in the user input element. *)
  method setCols : int -> unit meth
 
 (** Sets the default value of the prompt when it is displayed. *)
  method setDefaultValue : js_string t -> unit meth
 
 (** Set the number of rows in the user input element. *)
  method setRows : int -> unit meth

 (** Causes the prompt to appear, centered on the screen, gives focus
     to the text box, and selects the text *)
  method setVisible : bool t -> unit meth

end

let prompt : (js_string t -> js_string t -> (js_string t opt -> bool t) -> prompt t) constr = 
  Js.Unsafe.variable "goog.ui.Prompt"
  
