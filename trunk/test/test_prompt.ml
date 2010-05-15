(**
 * OClosure Project - 2010
 * Test goog.ui.Prompt
 *
 * A simple Prompt
 * 
 * @author Bozman Cagdas 
 * @author Cardoso Gabriel 
 * @version 0.1
 * @see 'Js'
 * @see 'goog.ui.Prompt'
 *)

open Js

let show_prompt prompt =
  prompt # setVisible true
    
let cdiv = Js.get_element_by_id "dialog"
    
let handler o = alert ("LOL " ^ (JSOO.as_string o))

let prompt = 
  new Prompt.prompt "Goog.ui.Prompt" "Question" handler

let button = Html.a ~onclick:(fun () -> show_prompt prompt) [Html.string "Click"]

let _ =
  prompt # setDefaultValue "yo";
  prompt # setRows 3;
  prompt # setContent "Question";  (** Fonction de la classe mère **)
  Node.append cdiv button
	
