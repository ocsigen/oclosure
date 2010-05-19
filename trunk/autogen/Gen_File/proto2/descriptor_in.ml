
(** 
    * OClosure Project - 2010
    * Class goog.proto2.Descriptor
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Util  (* goog.proto2.Util *)
open Object  (* goog.object *)
open Array  (* goog.array *)

class external descriptor : function -> object(* opt? *) -> (* Array[fieldDescriptor] *) ->  <
getName : string;
getFullName : string;
getContainingType : descriptor;
getFields : (* Array[fieldDescriptor] *);
getFieldsMap : object;
findFieldByName : string -> fieldDescriptor(* opt? *);
findFieldByTag : number(* | string *) -> fieldDescriptor;
createMessageInstance : message;
> = "goog.proto2.Descriptor"
