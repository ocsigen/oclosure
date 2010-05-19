
(** 
    * OClosure Project - 2010
    * Class goog.locale.DateTimeFormat
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open String  (* goog.string *)
open TimeZone  (* goog.locale.TimeZone *)
open Locale  (* goog.locale *)

class external dateTimeFormat :  <
applyPattern : string -> unit;
format : date -> timeZone(* opt? *) -> string;
applyStandardPattern : number -> unit;
> = "goog.locale.DateTimeFormat"
