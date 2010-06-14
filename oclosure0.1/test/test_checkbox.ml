open Checkbox
open Js
open Html

let _ =
  let box = new checkbox () in
  let aff = Js.get_element_by_id "checkbox" in
    box # decorate aff;
    let check = new checkbox () in
    let affichage = Js.get_element_by_id "check" in
      check # decorate affichage;
      
