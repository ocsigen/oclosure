
(** 
    * OClosure Project - 2010
    * Class goog.net.Jsonp
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Dom  (* goog.dom *)
open Uri  (* goog.Uri *)

class external jsonp : uri(* | string *) -> string(* opt? *) ->  <
cALLBACKS : unit;
setRequestTimeout : number -> unit;
getRequestTimeout : number;
send : object -> function(* opt? *) -> function(* opt? *) -> string(* opt? *) -> object;
cancel : object -> unit;
> = "goog.net.Jsonp"
