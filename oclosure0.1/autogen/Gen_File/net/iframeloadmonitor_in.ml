
(** 
    * OClosure Project - 2010
    * Class goog.net.IframeLoadMonitor
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open EventTarget  (* goog.events.EventTarget *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)

class external iframeLoadMonitor 
inherit eventTarget: hTMLIFrameElement -> boolean(* opt? *) ->  <
isLoaded : boolean;
getIframe : hTMLIFrameElement;
disposeInternal : unit;
> = "goog.net.IframeLoadMonitor"
