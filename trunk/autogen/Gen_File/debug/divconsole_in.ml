
(** 
    * OClosure Project - 2010
    * Class goog.debug.DivConsole
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Style  (* goog.style *)
open LogManager  (* goog.debug.LogManager *)
open HtmlFormatter  (* goog.debug.HtmlFormatter *)

class external divConsole : element ->  <
installStyles : unit;
setCapturing : boolean -> unit;
addLogRecord : logRecord -> unit;
getFormatter : formatter;
setFormatter : formatter -> unit;
addSeparator : unit;
clear : unit;
> = "goog.debug.DivConsole"
