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

class external prompt inherit dialog : string -> string -> (string -> unit) ->
<
  (** Return the number of cols in the user input element. *)
  getCols : unit -> number;
 
 (** Return the number of rows in the user input element. *)
 getRows : unit -> number;
 
 (** Set the number of cols in the user input element. *)
 setCols : int -> unit;
 
 (** Sets the default value of the prompt when it is displayed. *)
 setDefaultValue : string -> unit;
 
 (** Set the number of rows in the user input element. *)
 setRows : int -> unit;

 (** Causes the prompt to appear, centered on the screen, gives focus
     to the text box, and selects the text *)
 setVisible : bool -> unit;

 > = "goog.ui.Prompt"
  
