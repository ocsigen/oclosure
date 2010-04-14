(* 
 * Module goog.ui.Dialog
 * A simple Dialog
 * 
 * Bozman Cagdas - 2010
 * Cardoso Gabriel - 2010
 *)

open Js

let show_dialog dialog = 
  dialog # setVisible true
    
let cdiv = Js.get_element_by_id "dialog"
    
let dialog = new Dialog.dialog

let button = Html.a ~onclick:(fun () -> show_dialog dialog) [Html.string "Click"]

let _ =
  dialog # setVisible false;
  dialog # setContent "<br />Voici un exemple simple <br />
 avec OClosure:<br /><br /> goog.ui.Dialog <br />";
  Node.append cdiv button
	
