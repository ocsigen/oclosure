
(** 
    * OClosure Project - 2010
    * Class goog.History.EventType, goog.History.Event, goog.History
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open String  (* goog.string *)
open EventType  (* goog.events.EventType *)
open EventTarget  (* goog.events.EventTarget *)
open EventHandler  (* goog.events.EventHandler *)
open Event  (* goog.events.Event *)
open BrowserEvent  (* goog.events.BrowserEvent *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)

class external history 
inherit eventTarget: boolean(* opt? *) -> string(* opt? *) -> hTMLInputElement(* opt? *) -> hTMLIFrameElement(* opt? *) ->  <
disposeInternal : unit;
setEnabled : boolean -> unit;
onDocumentLoaded : unit;
getToken : string;
setToken : string -> string(* opt? *) -> unit;
replaceToken : string -> string(* opt? *) -> unit;
> = "goog.History"

class external event 
inherit event: string ->  <
> = "goog.History.Event"
