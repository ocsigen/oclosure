
(** 
    * OClosure Project - 2010
    * Class goog.net.cookies
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)

class external mAX_COOKIE_LENGTH :  <
isEnabled : boolean;
set : string -> string -> number(* opt? *) -> string(* opt? *) -> string(* opt? *) -> unit;
get : string -> string(* opt? *) -> string(* | undefined *);
remove : string -> string(* opt? *) -> string(* opt? *) -> boolean;
getKeys : (* Array[string] *);
getValues : (* Array[string] *);
isEmpty : boolean;
getCount : number;
containsKey : string -> boolean;
containsValue : string -> boolean;
clear : unit;
> = "goog.net.cookies.MAX_COOKIE_LENGTH"
