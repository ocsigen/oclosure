
(** 
    * OClosure Project - 2010
    * Class goog.i18n.TimeZone
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open String  (* goog.string *)
open Array  (* goog.array *)

class external timeZone :  <
createTimeZone : number(* | object *) -> timeZone;
getTimeZoneData : object;
getDaylightAdjustment : date -> number;
getGMTString : date -> string;
getLongName : date -> string;
getOffset : date -> number;
getRFCTimeZoneString : date -> string;
getShortName : date -> string;
getTimeZoneId : string;
isDaylightTime : date -> boolean;
> = "goog.i18n.TimeZone"
