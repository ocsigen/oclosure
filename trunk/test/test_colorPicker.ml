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
  
let button = Html.a ~onclick:(fun () -> c# enterDocument) [Html.string "Click"]

let _ = Node.append cdiv button


