(**
   * OClosure Project - 2010
   * Class goog.ui.AutoComplete
   *
   * This is the central manager class for an AutoComplete instance.
   * 
   * @author : Oran Charles
   * @version 0.1
   * @see 'goog.events.EventTarget'
   * @see 'goog.events.Event'
*)

let _ = 
  let array = [|"OCaml";"O'Browser";"Mon Colonel";"O'Closure";
	      "Caml";"Ocsigen";"Javascript";"Binding";"Closure";
	      "Pikachu";"Haskell";|] 
  in
  let div1 = Js.get_element_by_id "input1" in
  let div2 = Js.get_element_by_id "input2" in
    ignore(new AutoCompleteBasic.basic array div1 false);
    new AutoCompleteBasic.basic array div2 true
