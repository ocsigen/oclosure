open Menu
open MenuItem
open MenuButton

let _ =
  let item = new menuItem "New File" in
  let item2 = new menuItem "Save File" in
  let m = new menu () in
    m # addItem item;
    m # addItem item2;
    let mb = new menuButton "File" m in
    let aff = Js.get_element_by_id "menuButton" in
      mb # render aff
 
