
(** 
    * OClosure Project - 2010
    * Class goog.net.ChannelRequest
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Object  (* goog.object *)
open Tmpnetwork  (* goog.net.tmpnetwork *)
open XmlHttp  (* goog.net.XmlHttp *)
open XhrIo  (* goog.net.XhrIo *)
open EventHandler  (* goog.events.EventHandler *)
open Uri  (* goog.Uri *)
open Timer  (* goog.Timer *)

class external channelRequest : browserChannel(* | browserTestChannel *) -> channelDebug -> string(* opt? *) -> string(* | number(* opt? *) *) -> number(* opt? *) ->  <
errorStringFromCode : error -> number -> string;
setExtraHeaders : object -> unit;
setTimeout : number -> unit;
xmlHttpPost : uri -> string -> boolean -> unit;
xmlHttpGet : uri -> boolean -> boolean(* opt? *) -> unit;
tridentGet : uri -> boolean -> unit;
sendUsingImgTag : uri -> unit;
cancel : unit;
getSuccess : boolean;
getLastError : error(* opt? *);
getLastStatusCode : number;
getSessionId : string(* | undefined *);
getRequestId : string(* | number| undefined *);
getPostData : string(* opt? *);
getRequestStartTime : number(* opt? *);
> = "goog.net.ChannelRequest"
