
(** 
    * OClosure Project - 2010
    * Class goog.ui.AnimatedZippy
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ZippyEvent  (* goog.ui.ZippyEvent *)
open Zippy  (* goog.ui.Zippy *)
open Animation  (* goog.fx.Animation *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)

class external animatedZippy 
inherit zippy: element(* | string| null *) -> element(* | string *) -> boolean(* opt? *) ->  <
isBusy : boolean;
setExpanded : boolean -> unit;
> = "goog.ui.AnimatedZippy"
