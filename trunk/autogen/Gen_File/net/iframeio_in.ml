
(** 
    * OClosure Project - 2010
    * Class goog.net.IframeIo.IncrementalDataEvent, goog.net.IframeIo
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Structs  (* goog.structs *)
open String  (* goog.string *)
open XhrMonitor  (* goog.net.xhrMonitor *)
open EventType  (* goog.net.EventType *)
open ErrorCode  (* goog.net.ErrorCode *)
open Json  (* goog.json *)
open EventTarget  (* goog.events.EventTarget *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)
open Logger  (* goog.debug.Logger *)
open Debug  (* goog.debug *)
open Uri  (* goog.Uri *)
open Timer  (* goog.Timer *)

class external iframeIo 
inherit eventTarget:  <
send : uri(* | string *) -> function(* opt? *) -> string(* opt? *) -> boolean(* opt? *) -> object(* | map(* opt? *) *) -> unit;
getIframeByName : string -> hTMLIFrameElement;
getInstanceByName : string -> iframeIo;
handleIncrementalData : window -> object -> unit;
send : uri(* | string *) -> string(* opt? *) -> boolean(* opt? *) -> object(* | map(* opt? *) *) -> unit;
sendFromForm : hTMLFormElement -> string(* opt? *) -> boolean(* opt? *) -> unit;
abort : errorCode(* opt? *) -> unit;
disposeInternal : unit;
isComplete : boolean;
isSuccess : boolean;
isActive : boolean;
getResponseText : string(* opt? *);
getResponseHtml : string(* opt? *);
getResponseJson : object;
getResponseXml : hTMLDocument;
getLastUri : uri;
getLastErrorCode : errorCode;
getLastError : string;
getLastCustomError : object;
setErrorChecker : function -> unit;
getErrorChecker : function;
getTimeoutInterval : number;
setTimeoutInterval : number -> unit;
dispatchEvent : event(* | string *) -> unit;
> = "goog.net.IframeIo"

class external incrementalDataEvent 
inherit event: object ->  <
> = "goog.net.IframeIo.IncrementalDataEvent"
