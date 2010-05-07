open Popup


let p = Js.get_element_by_id "popup"
let popup_elt = new popup p

let _ = popup_elt # setVisible true
