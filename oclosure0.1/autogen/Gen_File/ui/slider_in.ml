
(** 
    * OClosure Project - 2010
    * Class goog.ui.Slider.Orientation, goog.ui.Slider
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Orientation  (* goog.ui.SliderBase.Orientation *)
open SliderBase  (* goog.ui.SliderBase *)
open Role  (* goog.dom.a11y.Role *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)

class external slider 
inherit sliderBase: domHelper(* opt? *) ->  <
getCssClass : orientation -> string;
createThumbs : unit;
> = "goog.ui.Slider"
