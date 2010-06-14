
(** 
    * OClosure Project - 2010
    * Class goog.debug.DebugWindow
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open CircularBuffer  (* goog.structs.CircularBuffer *)
open LogManager  (* goog.debug.LogManager *)
open HtmlFormatter  (* goog.debug.HtmlFormatter *)

class external debugWindow : string(* opt? *) -> string(* opt? *) ->  <
setWelcomeMessage : string -> unit;
init : unit;
isEnabled : boolean;
setEnabled : boolean -> unit;
isCapturing : boolean;
setCapturing : boolean -> unit;
getFormatter : formatter;
setFormatter : formatter -> unit;
addSeparator : unit;
clear_ : unit;
addLogRecord : logRecord -> unit;
writeBufferToLog_ : unit;
writeSavedMessages_ : unit;
getStyleRules : string;
writeInitialDocument_ : unit;
isEnabled : string -> boolean;
addFilter : string -> unit;
removeFilter : string -> unit;
> = "goog.debug.DebugWindow"
