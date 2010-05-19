
(** 
    * OClosure Project - 2010
    * Class goog.locale.timeZoneDetection
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open TimeZoneFingerprint  (* goog.locale.TimeZoneFingerprint *)
open Locale  (* goog.locale *)

class external tZ_POKE_POINTS_ :  <
getFingerprint : date -> number;
detectTimeZone : string(* opt? *) -> date(* opt? *) -> string;
getTimeZoneList : string(* opt? *) -> date(* opt? *) -> (* Array[string] *);
> = "goog.locale.timeZoneDetection.TZ_POKE_POINTS_"
