(*@ author Bourdin Pierre *)


open Combobox
open Sliderbase 
open Slider
open Twothumbslider
open Labelinput
open Js
open Html

let slid = new slider 
let labelin=new labelinput 
  
let f = Some(fun ()->Js.alert(string_of_int(slid#getValue()));
	       Js.alert(labelin#getValue())
	    )

let _=
  let but = Js.get_element_by_id "aff_res" in 
    register_event_opt but "onclick" f;
  let combo = new combobox in
  let dslide = new twothumbslider in
  let comboboxit = new comboboxitem "it1" in
  let comboboxit2 = new comboboxitem "it2" in
  let el = Js.get_element_by_id "slide" in
  let el2 = Js.get_element_by_id "dslide" in
    slid#setOrientation Sliderbase.orientation_vertical;
    slid#decorate(el);
    slid#setMaximum 10;
    slid#setMinimum 5;
    labelin#render(Js.get_element_by_id "cible2");
    combo#setDefaultText "Combo";
    combo#addItem comboboxit;
    combo#addItem comboboxit2;
    combo#render (Js.get_element_by_id "cible");
    dslide#decorate(el2);
    
