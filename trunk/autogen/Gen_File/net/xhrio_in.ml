
(** 
    * OClosure Project - 2010
    * Class goog.net.XhrIo
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Map  (* goog.structs.Map *)
open Structs  (* goog.structs *)
open XhrMonitor  (* goog.net.xhrMonitor *)
open XmlHttp  (* goog.net.XmlHttp *)
open EventType  (* goog.net.EventType *)
open ErrorCode  (* goog.net.ErrorCode *)
open Json  (* goog.json *)
open EventTarget  (* goog.events.EventTarget *)
open ErrorHandlerWeakDep  (* goog.debug.errorHandlerWeakDep *)
open Logger  (* goog.debug.Logger *)
open Timer  (* goog.Timer *)

class external xhrIo 
inherit eventTarget:  <
send : string(* | uri *) -> function(* opt? *) -> string(* opt? *) -> string(* | gearsBlob(* opt? *) *) -> object(* | map(* opt? *) *) -> number(* opt? *) -> unit;
cleanup : unit;
protectEntryPoints : errorHandler -> boolean(* opt? *) -> unit;
getTimeoutInterval : number;
setTimeoutInterval : number -> unit;
send : string(* | uri *) -> string(* opt? *) -> string(* | gearsBlob(* opt? *) *) -> object(* | map(* opt? *) *) -> unit;
createXhr : xMLHttpRequest(* | gearsHttpRequest *);
dispatchEvent : event(* | string *) -> boolean;
abort : errorCode(* opt? *) -> unit;
disposeInternal : unit;
isActive : boolean;
isComplete : boolean;
isSuccess : boolean;
getReadyState : readyState;
getStatus : number;
getStatusText : string;
getLastUri : string;
getResponseText : string;
getResponseXml : document;
getResponseJson : string(* opt? *) -> object(* | undefined *);
getResponseHeader : string -> string(* | undefined *);
getLastErrorCode : errorCode;
getLastError : string;
> = "goog.net.XhrIo"
