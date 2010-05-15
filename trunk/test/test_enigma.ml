(**
 * OClosure Project - 2010 
 * Test goog.ui.Dialog
 * 
 * A simple Dialog
 * 
 * @author Bozman Cagdas
 * @author Cardoso Gabriel
 * @version 0.1
 * @see 'goog.ui.Dialog'
 * @see 'Js'
 *)

open Js

let show_dialog dialog = 
  dialog # setVisible true
    
let cdiv = Js.get_element_by_id "dialog"
    
let dialog = new Dialog.dialog

let button = Html.a ~onclick:(fun () -> show_dialog dialog) [Html.string "Click"]

let _ =
  dialog # setVisible false;
  dialog # setContent "<br /><b>ANSWER :</b> <br /> 5 euros !<br />";
  Node.append cdiv button
	
