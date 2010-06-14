
(** 
    * OClosure Project - 2010
    * Class goog.proto2.PbLiteSerializer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Util  (* goog.proto2.Util *)
open LazyDeserializer  (* goog.proto2.LazyDeserializer *)

class external pbLiteSerializer 
inherit lazyDeserializer:  <
serialize : message -> object;
deserializeField : unit;
getSerializedValue : unit;
getDeserializedValue : unit;
> = "goog.proto2.PbLiteSerializer"
