
(** 
    * OClosure Project - 2010
    * Class goog.debug.ErrorReporter
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Utils  (* goog.uri.utils *)
open String  (* goog.string *)
open XhrIo  (* goog.net.XhrIo *)
open Events  (* goog.events *)
open ErrorHandler  (* goog.debug.ErrorHandler *)
open Debug  (* goog.debug *)

class external errorReporter : string ->  <
install : string -> errorReporter;
protectAdditionalEntryPoint : function -> boolean(* opt? *) -> function;
setLoggingHeaders : object(* | map *) -> unit;
handleException : error -> unit;
sendErrorReport : string -> string -> number -> string(* opt? *) -> unit;
> = "goog.debug.ErrorReporter"
