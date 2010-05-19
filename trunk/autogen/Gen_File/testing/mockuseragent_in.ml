
(** 
    * OClosure Project - 2010
    * Class goog.testing.MockUserAgent
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Disposable  (* goog.Disposable *)

class external mockUserAgent 
inherit disposable:  <
install : unit;
getUserAgentString : string(* opt? *);
setUserAgentString : string -> unit;
getNavigator : object;
setNavigator : object -> unit;
uninstall : unit;
disposeInternal : unit;
> = "goog.testing.MockUserAgent"
