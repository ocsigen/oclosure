
(** 
    * OClosure Project - 2010
    * Class goog.gears.MultipartFormData
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open String  (* goog.string *)
open Gears  (* goog.gears *)
open Asserts  (* goog.asserts *)

class external multipartFormData :  <
addFile : string -> gearsFile -> multipartFormData;
addText : string -> (* any = "*" *) -> multipartFormData;
addBlob : string -> string -> gearsBlob -> multipartFormData;
getContentType : string;
getAsBlob : gearsBlob;
> = "goog.gears.MultipartFormData"
