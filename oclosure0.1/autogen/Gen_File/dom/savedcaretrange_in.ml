
(** 
    * OClosure Project - 2010
    * Class goog.dom.SavedCaretRange
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open String  (* goog.string *)
open TagName  (* goog.dom.TagName *)
open SavedRange  (* goog.dom.SavedRange *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external savedCaretRange 
inherit savedRange: abstractRange ->  <
toAbstractRange : abstractRange(* opt? *);
getCaret : boolean -> element;
removeCarets : abstractRange(* opt? *) -> abstractRange(* | undefined *);
setRestorationDocument : document(* opt? *) -> unit;
restoreInternal : abstractRange(* opt? *);
disposeInternal : unit;
htmlEqual : string -> string -> boolean;
> = "goog.dom.SavedCaretRange"
