
(** 
    * OClosure Project - 2010
    * Class goog.debug.LogRecord
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)

class external logRecord : level -> string -> string -> number(* opt? *) -> number(* opt? *) ->  <
getLoggerName : string;
getException : object;
setException : object -> unit;
getExceptionText : string(* opt? *);
setExceptionText : string -> unit;
setLoggerName : string -> unit;
getLevel : level;
setLevel : level -> unit;
getMessage : string;
setMessage : string -> unit;
getMillis : number;
setMillis : number -> unit;
getSequenceNumber : number;
> = "goog.debug.LogRecord"
