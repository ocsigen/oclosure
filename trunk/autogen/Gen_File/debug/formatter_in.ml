
(** 
    * OClosure Project - 2010
    * Class goog.debug.TextFormatter, goog.debug.HtmlFormatter, goog.debug.Formatter
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open String  (* goog.string *)
open RelativeTimeProvider  (* goog.debug.RelativeTimeProvider *)

class external formatter : string(* opt? *) ->  <
formatRecord : logRecord -> string;
setStartTimeProvider : relativeTimeProvider -> unit;
getStartTimeProvider : relativeTimeProvider;
resetRelativeTimeStart : unit;
> = "goog.debug.Formatter"

class external htmlFormatter 
inherit formatter: string(* opt? *) ->  <
formatRecord : logRecord -> string;
> = "goog.debug.HtmlFormatter"

class external textFormatter 
inherit formatter: string(* opt? *) ->  <
formatRecord : logRecord -> string;
> = "goog.debug.TextFormatter"
