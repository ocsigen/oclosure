
(** 
    * OClosure Project - 2010
    * Class goog.net.MockIFrameIo
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open IncrementalDataEvent  (* goog.net.IframeIo.IncrementalDataEvent *)
open IframeIo  (* goog.net.IframeIo *)
open ErrorCode  (* goog.net.ErrorCode *)
open EventTarget  (* goog.events.EventTarget *)

class external mockIFrameIo 
inherit eventTarget: testQueue ->  <
send : uri(* | string *) -> string(* opt? *) -> boolean(* opt? *) -> object(* | map(* opt? *) *) -> unit;
sendFromForm : element -> string(* opt? *) -> boolean(* opt? *) -> unit;
abort : errorCode(* opt? *) -> unit;
simulateIncrementalData : object -> unit;
simulateDone : errorCode -> unit;
simulateReady : unit;
isComplete : boolean;
isSuccess : boolean;
isActive : boolean;
getResponseText : string;
getResponseJson : object;
getLastUri : uri;
getLastErrorCode : errorCode;
getLastError : string;
getLastCustomError : object;
setErrorChecker : function -> unit;
getErrorChecker : function;
getTimeoutInterval : number;
setTimeoutInterval : number -> unit;
> = "goog.net.MockIFrameIo"
