open Menu
open MenuItem
open SubMenu
open Coordinate
let _ =
  let sub = new subMenu "File" in
  let item = new menuItem " New File" in
  let item2 = new menuItem "Save File" in
  let item3 = new menuItem "Load" in
  let m = new menu () in
    let coord = new coordinate 0. 0. in
    let s = coord # toString () in
      Js.alert s;
      let aff = Js.get_element_by_id "test" in
	sub # addItem item;
	sub # addItem item2;  
	m # addItem sub; 
	m # addItem item3;
	m # render aff
