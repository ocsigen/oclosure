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

type funct = JSOO.obj

class external prompt inherit dialog : string -> string -> funct ->
<
  setRows : int -> unit;
> = "goog.ui.Prompt"
  
