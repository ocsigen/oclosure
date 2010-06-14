
(** 
    * OClosure Project - 2010
    * Class goog.proto2.Serializer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Util  (* goog.proto2.Util *)
open Message  (* goog.proto2.Message *)
open FieldDescriptor  (* goog.proto2.FieldDescriptor *)
open Descriptor  (* goog.proto2.Descriptor *)

class external serializer :  <
serialize : message -> object;
getSerializedValue : fieldDescriptor -> (* any = "*" *) -> (* any = "*" *);
deserialize : descriptor -> (* any = "*" *) -> message;
deserializeTo : message -> (* any = "*" *) -> unit;
getDeserializedValue : fieldDescriptor -> (* any = "*" *) -> (* any = "*" *);
> = "goog.proto2.Serializer"
