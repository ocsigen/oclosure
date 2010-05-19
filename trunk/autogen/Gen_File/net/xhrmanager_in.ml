
(** 
    * OClosure Project - 2010
    * Class goog.net.XhrManager.Request, goog.net.XhrManager.EventType, goog.net.XhrManager.Event, goog.net.XhrManager
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Map  (* goog.structs.Map *)
open XhrIoPool  (* goog.net.XhrIoPool *)
open XhrIo  (* goog.net.XhrIo *)
open EventType  (* goog.net.EventType *)
open EventTarget  (* goog.events.EventTarget *)
open EventHandler  (* goog.events.EventHandler *)
open Event  (* goog.events.Event *)
open Events  (* goog.events *)
open Disposable  (* goog.Disposable *)

class external xhrManager 
inherit eventTarget: number(* opt? *) -> map(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) ->  <
setTimeoutInterval : number -> unit;
getOutstandingCount : number;
send : string -> string -> string(* opt? *) -> string(* opt? *) -> object(* | map(* opt? *) *) -> (* any = "*" *)(* opt? *) -> function(* opt? *) -> number(* opt? *) -> request;
abort : string -> boolean(* opt? *) -> unit;
disposeInternal : unit;
> = "goog.net.XhrManager"

class external event 
inherit event: eventType -> xhrManager -> string -> xhrIo ->  <
disposeInternal : unit;
> = "goog.net.XhrManager.Event"

class external request 
inherit disposable: string -> function -> string(* opt? *) -> string(* opt? *) -> object(* | map(* opt? *) *) -> function(* opt? *) -> number(* opt? *) ->  <
getUrl : string;
getMethod : string;
getContent : string(* | undefined *);
getHeaders : object(* | map *);
getMaxRetries : number;
getAttemptCount : number;
increaseAttemptCount : unit;
hasReachedMaxRetries : boolean;
setCompleted : boolean -> unit;
getCompleted : boolean;
setAborted : boolean -> unit;
getAborted : boolean;
getXhrEventCallback : function(* | undefined *);
getCompleteCallback : function(* | undefined *);
disposeInternal : unit;
> = "goog.net.XhrManager.Request"
