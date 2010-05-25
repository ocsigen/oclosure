(**
   * OClosure Project - 2010
   * Class goog.ui.Charcounter
   *
   * CharCounter widget. Counts the number of characters in a input field or a
   * text box and displays the number of additional characters that may be
   * entered before the maximum length is reached.
   *
   * @author : Oran Charles
   * @version 0.1
   * @see 'Js'
*)
open Js
open Html

let _ =
  let input1 = Js.get_element_by_id "input1"
  and counter1 = Js.get_element_by_id "counter1" in
    ignore(new Charcounter.charcounter input1 counter1 160. Charcounter.display_Remaining);

  let input2 = Js.get_element_by_id "input2"
  and counter2 = Js.get_element_by_id "counter2" in
    ignore(new Charcounter.charcounter input2 counter2 160. Charcounter.display_Incremental);

  let input3 = Js.get_element_by_id "input3"
  and counter3 = Js.get_element_by_id "counter3"
  and set10 = Js.get_element_by_id "set1"
  and set20 = Js.get_element_by_id "set2" in
  let test = new Charcounter.charcounter input3 counter3 10. Charcounter.display_Remaining in
    register_event_opt set10 "onclick" (Some (fun () -> test#setMaxLength 10.));
    register_event_opt set20 "onclick" (Some(fun () -> test#setMaxLength 20.));

  let input4 = Js.get_element_by_id "input4" in
  let counter4 = Js.get_element_by_id "counter4" in
    ignore(new Charcounter.charcounter input4 counter4 255. Charcounter.display_Remaining);
