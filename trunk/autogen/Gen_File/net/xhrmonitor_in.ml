
(** 
    * OClosure Project - 2010
    * Class goog.net.xhrMonitor
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Logger  (* goog.debug.Logger *)
open Array  (* goog.array *)

class external xhrMonitor_ :  <
getKey : object(* | string *) -> string(* | number *);
setEnabled : boolean -> unit;
pushContext : object(* | string *) -> unit;
popContext : unit;
isContextSafe : object(* | string *) -> boolean;
markXhrOpen : object -> unit;
markXhrClosed : object -> unit;
> = "goog.net.XhrMonitor_"
