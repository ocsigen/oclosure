
(** 
    * OClosure Project - 2010
    * Class goog.net.BrowserTestChannel
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open ChannelRequest  (* goog.net.ChannelRequest *)
open ChannelDebug  (* goog.net.ChannelDebug *)

class external browserTestChannel : browserChannel -> channelDebug ->  <
setExtraHeaders : object -> unit;
connect : string -> unit;
abort : unit;
isClosed : boolean;
onRequestData : channelRequest -> string -> unit;
onRequestComplete : channelRequest -> unit;
getLastStatusCode : number;
isActive : browserChannel -> boolean;
> = "goog.net.BrowserTestChannel"
