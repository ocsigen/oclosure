(**
 * OClosure Project - 2010
 * Class goog.ui.ProgressBar
 *
 * This creates a progress bar object.
 *
 * @author : Oran Charles
 * @version 0.1
 * @see 'goog.ui.Component'
 *)
open Js
open Html

let div1 = Js.get_element_by_id "d"
let div2 = Js.get_element_by_id "pb2"
let pB1 = new ProgressBar.progressBar ()
let pB2 = new ProgressBar.progressBar ()

let handler o = Js.alert ("Result: " ^ (JSOO.as_string o))

let f1 = Some (fun () -> let value = pB1#getValue () in
		 pB1#setValue (value +. 10.);
		 pB2#setValue (value +. 10.))

let f2 = Some (fun () -> let value = pB1#getValue () in
		 pB1#setValue (value -. 10.);
		 pB2#setValue (value -. 10.))

let _ = 
  pB1#decorate div1; 
  pB1#setOrientation ProgressBar.vertical;
  pB1#setMaximum 100.;
  pB1#setMinimum 0.;
  pB1#setValue 50.;

  pB2#decorate div2;
  pB2#setMaximum 100.;
  pB2#setMinimum 0.;
  pB2#setValue 50.;

  let input_plus = Js.get_element_by_id "plus" in
  let input_moins = Js.get_element_by_id "moins" in
    register_event_opt input_plus "onclick" f1;
    register_event_opt input_moins "onclick" f2
    

  (**let timer = new Timer.timer 20. in
    timer#addEventListener "tick" handler;
    timer#dispatchEvent "tick";
    print_float (timer#getInterval ());
    timer#start () **)
      
