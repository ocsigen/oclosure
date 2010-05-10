(* Test Popup 
 * Esther Baruk - 2010 *)

open Popup
open AnchoredPosition

let p = Js.get_element_by_id "popup"
let popup_elt = new popup p
let _ = popup_elt # setPosition (new anchoredPosition p 1)
let _ = popup_elt # setVisible true
