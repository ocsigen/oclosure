
(** 
    * OClosure Project - 2010
    * Class goog.proto2.LazyDeserializer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Util  (* goog.proto2.Util *)
open Serializer  (* goog.proto2.Serializer *)

class external lazyDeserializer 
inherit serializer:  <
deserialize : unit;
deserializeTo : unit;
deserializeField : message -> fieldDescriptor -> (* any = "*" *) -> (* any = "*" *);
> = "goog.proto2.LazyDeserializer"
