(* 
 * Module goog.ui.Dialog
 * A simple Dialog
 *)

open Js

let show_dialog dialog = 
  dialog # setVisible true
    
let cdiv = Js.get_element_by_id "dialog"
    
let dialog = new Dialog.dialog

let button = Html.a ~onclick:(fun () -> show_dialog dialog) [Html.string "Click"]

let _ =
  dialog # setVisible false;
  dialog # setContent "Voici un exemple simple <br />
 avec O'Closure:<br /> goog.ui.Dialog";
  Node.append cdiv button
	
