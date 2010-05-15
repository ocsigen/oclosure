(**
 * OClosure Project - 2010
 * Test goog.ui.DatePicker
 *
 * A simple DatePicker
 * 
 * @author Bozman Cagdas 
 * @version 0.1
 * @see 'Js'
 * @see 'goog.ui.DatePicker'
 *)

open Js

let d = new DatePicker.datePicker

let button = 
  Html.a ~onclick:(fun () -> d) [Html.string "Click"]

let cdiv = Js.get_element_by_id "datePicker"

let _ =
  d # render cdiv;
  Node.append cdiv button
