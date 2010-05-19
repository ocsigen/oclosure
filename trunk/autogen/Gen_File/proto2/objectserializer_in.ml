
(** 
    * OClosure Project - 2010
    * Class goog.proto2.ObjectSerializer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open String  (* goog.string *)
open Util  (* goog.proto2.Util *)
open Serializer  (* goog.proto2.Serializer *)

class external objectSerializer 
inherit serializer: keyOption(* opt? *) ->  <
serialize : message -> object;
deserializeTo : message -> object -> unit;
> = "goog.proto2.ObjectSerializer"
