
(** 
    * OClosure Project - 2010
    * Class goog.format.HtmlPrettyPrinter.Buffer, goog.format.HtmlPrettyPrinter
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open StringBuffer  (* goog.string.StringBuffer *)
open Object  (* goog.object *)

class external htmlPrettyPrinter : number(* opt? *) ->  <
format : string -> string;
format : string -> string;
> = "goog.format.HtmlPrettyPrinter"

class external buffer :  <
pushToken : boolean -> string -> boolean -> unit;
lineBreak : unit;
toString : string;
> = "goog.format.HtmlPrettyPrinter.Buffer"
