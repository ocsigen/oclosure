
(** 
    * OClosure Project - 2010
    * Class goog.testing.MockRandom
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Disposable  (* goog.Disposable *)

class external mockRandom 
inherit disposable: (* Array[number] *) -> boolean(* opt? *) ->  <
install : unit;
random : number;
hasMoreValues : boolean;
inject : (* Array[number] *)(* | number *) -> unit;
uninstall : unit;
disposeInternal : unit;
> = "goog.testing.MockRandom"
