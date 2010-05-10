(* 
 * Module goog.ui.Prompt
 * A simple Prompt
 * 
 * Bozman Cagdas - 2010
 * Cardoso Gabriel - 2010
 *)

open Js

let show_prompt prompt =
  prompt # setVisible true
    
let cdiv = Js.get_element_by_id "dialog"
    
let handler res = alert res

let prompt = new Prompt.prompt "Goog.ui.Prompt" "Question" (fun () -> alert "lol")

let button = Html.a ~onclick:(fun () -> show_prompt prompt) [Html.string "Click"]

let _ =
  prompt # setRows 3;
  prompt # setContent "Question" (** Fonction de la classe mère **);
  Node.append cdiv button
	
