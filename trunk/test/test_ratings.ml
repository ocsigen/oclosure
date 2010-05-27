(** 
    * OClosure Project - 2010
    * Class goog.ui.Ratings
    *
    * A UI Control used for rating things, i.e. videos on Google Video.
    *
    * @author : Oran Charles
    * @version 0.1
    * @see 'goog.ui.Component'
*)
open Js
open Html

let r = new Ratings.ratings () 
let i = ref 2.

let f1 = Some (fun () -> 
		 i := !i +. 1.;
		 r#setSelectedIndex !i)

let f2 = Some (fun () -> 
		 i := !i -. 1. ;
		 r#setSelectedIndex !i)

let exit_ = Some( fun () -> r#exitDocument ())

let _ =
  let test = Js.get_element_by_id "test" in
    r#render test;
    r#setSelectedIndex !i;

  let input_plus = Js.get_element_by_id "plus" in 
  let input_moins = Js.get_element_by_id "moins" in
  let input_exit = Js.get_element_by_id "exit" in
    register_event_opt input_plus "onclick" f1;
    register_event_opt input_moins "onclick" f2;
    register_event_opt input_exit "onclick" exit_;
    
