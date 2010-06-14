
(** 
    * OClosure Project - 2010
    * Class goog.dom.a11y.State, goog.dom.a11y.Role, goog.dom.a11y
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Dom  (* goog.dom *)

class external state :  <
setRole : element -> string -> unit;
getRole : element -> string;
setState : element -> string -> string(* | boolean| number *) -> unit;
getState : element -> string -> string;
getNoBrowserCheck : boolean;
setNoBrowserCheck : boolean -> unit;
getActiveDescendant : element -> element;
setActiveDescendant : element -> element -> unit;
> = "goog.dom.a11y.State"
