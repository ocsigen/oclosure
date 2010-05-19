
(** 
    * OClosure Project - 2010
    * Class goog.dom.selection
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open String  (* goog.string *)

class external setStart : element -> number ->  <
getStart : element -> number;
getEndPoints : element -> (* Array[number] *);
setEnd : element -> number -> unit;
getEnd : element -> number;
setCursorPosition : element -> number -> unit;
setText : element -> string -> unit;
getText : element -> string;
> = "goog.dom.selection.setStart"
