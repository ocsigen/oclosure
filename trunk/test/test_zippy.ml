(**
   * OClosure Project - 2010
   * Test goog.ui.Zippy
   *
   * Zippy widget. Expandable/collapsible container, 
   * clicking the header toggles the visibility of the content.
   *
   * @author : Oran Charles
   * @version 0.1
*)

let f a = 
  Js.alert a

let _ =  
  let z1 = new Zippy.zippy "header1" "content1" in
    z1#expand();
  let z2 = new AnimatedZippy.animatedzippy "header2" "content2" false in
    z2#isBusy();
  let z3 = new AnimatedZippy.animatedzippy "header3" "content3" true in
    z3#isBusy() 
  (*let event = new Eventsobj.eventObj () in
    event#listen (Js.get_element_by_id "header1") "toggle" f*)
