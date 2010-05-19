
(** 
    * OClosure Project - 2010
    * Class goog.format.JsonPrettyPrinter.TextDelimiters, goog.format.JsonPrettyPrinter.HtmlDelimiters, goog.format.JsonPrettyPrinter
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Format  (* goog.string.format *)
open StringBuffer  (* goog.string.StringBuffer *)
open String  (* goog.string *)
open Serializer  (* goog.json.Serializer *)
open Json  (* goog.json *)

class external jsonPrettyPrinter : textDelimiters ->  <
format : (* any = "*" *) -> string;
> = "goog.format.JsonPrettyPrinter"

class external textDelimiters :  <
> = "goog.format.JsonPrettyPrinter.TextDelimiters"

class external htmlDelimiters 
inherit textDelimiters:  <
> = "goog.format.JsonPrettyPrinter.HtmlDelimiters"
