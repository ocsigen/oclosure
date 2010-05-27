let _ = 
  let data = new CharPickerData.charPickerData () in
  let picker = new CharPicker.charPicker data [|"\uD869\uDED6";"a";"b";"c"|] 10. 1. in
  let elt = Js.get_element_by_id "char-picker" in
    picker#decorate elt
