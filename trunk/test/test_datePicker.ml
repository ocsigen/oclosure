(* 
 * Module goog.ui.DatePicker
 * A simple DatePicker
 * 
 * Bozman Cagdas - 2010
 *)

open Js

let d = new DatePicker.datePicker

let button = 
  Html.a ~onclick:(fun () -> d) [Html.string "Click"]

let cdiv = Js.get_element_by_id "datePicker"

let _ =
  d # render cdiv;
  Node.append cdiv button
