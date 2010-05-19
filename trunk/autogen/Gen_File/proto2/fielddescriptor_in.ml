
(** 
    * OClosure Project - 2010
    * Class goog.proto2.FieldDescriptor
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open String  (* goog.string *)
open Util  (* goog.proto2.Util *)

class external fieldDescriptor : function -> number(* | string *) -> object ->  <
getTag : number;
getContainingType : descriptor;
getName : string;
getDefaultValue : object;
getFieldType : fieldType;
getNativeType : object;
getFieldMessageType : descriptor;
isRepeated : boolean;
isRequired : boolean;
isOptional : boolean;
> = "goog.proto2.FieldDescriptor"
