
(** 
    * OClosure Project - 2010 
    * Test goog.ui.ColorPicker
    * 
    * A simple ColorPicker
    * 
    * @author Bozman Cagdas
    * @author Cardoso Gabriel
    * @version 0.1
    * @see 'goog.ui.ColorPicker'
    * @see 'Js'
*)
open Js
  
let cdiv = Js.get_element_by_id "cp"

let dom = new Dom.dom

let cp = new ColorPalette.colorPalette
  
let c = new ColorPicker.colorPicker dom cp 

let s = [| "#ffffff"; "#cccccc"|]

 let button = Html.a ~onclick:(fun () -> alert (c # getSelectedColor ())) [Html.string "Click"]

let _ = 
  let colors = c # getColors () in
    c # setSize 7;
    c # setColors colors;
    c # render cdiv;
  Node.append cdiv button


