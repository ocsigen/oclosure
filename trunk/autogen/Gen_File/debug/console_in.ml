
(** 
    * OClosure Project - 2010
    * Class goog.debug.Console
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open TextFormatter  (* goog.debug.TextFormatter *)
open Level  (* goog.debug.Logger.Level *)
open LogManager  (* goog.debug.LogManager *)

class external console :  <
getFormatter : textFormatter;
setCapturing : boolean -> unit;
addLogRecord : logRecord -> unit;
autoInstall : unit;
show : unit;
> = "goog.debug.Console"
