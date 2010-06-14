
(** 
    * OClosure Project - 2010
    * Class goog.userAgent
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open String  (* goog.string *)

class external aSSUME_IE :  <
aSSUME_GECKO : unit;
aSSUME_WEBKIT : unit;
aSSUME_MOBILE_WEBKIT : unit;
aSSUME_OPERA : unit;
getUserAgentString : string(* opt? *);
getNavigator : object;
aSSUME_MAC : unit;
aSSUME_WINDOWS : unit;
aSSUME_LINUX : unit;
aSSUME_X11 : unit;
compare : string -> string -> number;
isVersion : string(* | number *) -> boolean;
> = "goog.userAgent.ASSUME_IE"
