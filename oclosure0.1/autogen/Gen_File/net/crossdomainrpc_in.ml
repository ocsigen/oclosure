
(** 
    * OClosure Project - 2010
    * Class goog.net.CrossDomainRpc
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open EventType  (* goog.net.EventType *)
open Json  (* goog.json *)
open EventTarget  (* goog.events.EventTarget *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)
open Logger  (* goog.debug.Logger *)
open QueryData  (* goog.Uri.QueryData *)

class external crossDomainRpc 
inherit eventTarget:  <
setDummyResourceUri : string -> unit;
setUseFallBackDummyResource : boolean -> unit;
send : string -> function(* opt? *) -> string(* opt? *) -> object(* opt? *) -> object(* opt? *) -> unit;
setDebugMode : boolean -> unit;
sendRequest : string -> string(* opt? *) -> object(* opt? *) -> object(* opt? *) -> unit;
getResponseJson : object(* | undefined *);
isSuccess : boolean;
reset : unit;
sendResponse : string -> boolean -> object -> number -> string -> unit;
getResponseHeader : string -> string(* | undefined *);
> = "goog.net.CrossDomainRpc"
