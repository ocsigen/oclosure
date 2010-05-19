
(** 
    * OClosure Project - 2010
    * Class goog.dom.SavedRange
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Logger  (* goog.debug.Logger *)
open Disposable  (* goog.Disposable *)

class external savedRange 
inherit disposable:  <
restore : boolean(* opt? *) -> abstractRange;
restoreInternal : abstractRange;
> = "goog.dom.SavedRange"
