(*
 * Creates an object that represents a prompt 
 * (used in place of javascript's prompt). 
 * The html structure of the prompt is the same as the layout for dialog.js 
 * except for the addition of a text box which is placed inside 
 * the "Content area" and has the default class-name 'modal-dialog-userInput' 
 * Bozman Cagdas - 2010
 * Cardoso Gabriel - 2010
 *)

open Dialog

(** The function to call when the user selects Ok or Cancel. 
    The function should expect a single argument which represents what 
    the user entered into the prompt. If the user presses cancel, the value of the argument will be null. **)
type funct

(** Number **)
type number

class external prompt inherit dialog : string -> string -> (string -> unit) ->
<
  (** Return the number of cols in the user input element. **)
  getCols : unit -> number;
 
 (** Return the number of rows in the user input element. **)
 getRows : unit -> number;
 
 (** Set the number of cols in the user input element. **)
 setCols : int -> unit;
 
 (** Sets the default value of the prompt when it is displayed. **)
 setDefaultValue : string -> unit;
 
 (** Set the number of rows in the user input element. **)
 setRows : int -> unit;

 (** Causes the prompt to appear, centered on the screen, gives focus
     to the text box, and selects the text **)
 setVisible : bool -> unit;

 > = "goog.ui.Prompt"
  
