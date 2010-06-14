
(** 
    * OClosure Project - 2010
    * Class goog.net.NetworkTester
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Logger  (* goog.debug.Logger *)
open Uri  (* goog.Uri *)
open Timer  (* goog.Timer *)

class external networkTester : function -> object(* opt? *) -> uri(* opt? *) ->  <
getTimeout : number;
setTimeout : number -> unit;
getNumRetries : number;
setNumRetries : number -> unit;
getPauseBetweenRetries : number;
setPauseBetweenRetries : number -> unit;
getUri : uri;
setUri : uri -> unit;
isRunning : boolean;
start : unit;
stop : unit;
onResult : boolean -> unit;
> = "goog.net.NetworkTester"
