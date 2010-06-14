
(** 
    * OClosure Project - 2010
    * Class goog.net.XhrLite
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open XhrIo  (* goog.net.XhrIo *)

class external xhrLite :  <
send : string -> function(* opt? *) -> string(* opt? *) -> string(* opt? *) -> object(* | map(* opt? *) *) -> number(* opt? *) -> unit;
cleanup : unit;
protectEntryPoints : errorHandler -> boolean(* opt? *) -> unit;
> = "goog.net.XhrLite"
