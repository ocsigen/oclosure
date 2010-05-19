
(** 
    * OClosure Project - 2010
    * Class goog.ui.FormPost
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Component  (* goog.ui.Component *)
open StringBuffer  (* goog.string.StringBuffer *)
open String  (* goog.string *)
open TagName  (* goog.dom.TagName *)
open Array  (* goog.array *)

class external formPost 
inherit component: domHelper(* opt? *) ->  <
createDom : unit;
post : object -> string(* opt? *) -> string(* opt? *) -> unit;
> = "goog.ui.FormPost"
