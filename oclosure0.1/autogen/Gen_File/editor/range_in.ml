
(** 
    * OClosure Project - 2010
    * Class goog.editor.range.Point, goog.editor.range
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Iter  (* goog.iter *)
open Style  (* goog.editor.style *)
open Node  (* goog.editor.node *)
open BrowserFeature  (* goog.editor.BrowserFeature *)
open SavedCaretRange  (* goog.dom.SavedCaretRange *)
open RangeEndpoint  (* goog.dom.RangeEndpoint *)
open Range  (* goog.dom.Range *)
open NodeType  (* goog.dom.NodeType *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external narrow : abstractRange -> element ->  <
expand : abstractRange -> node(* opt? *) -> abstractRange;
selectNodeStart : node -> unit;
placeCursorNextTo : node -> boolean -> abstractRange;
selectionPreservingNormalize : node -> unit;
getDeepEndPoint : abstractRange -> boolean -> point;
normalize : abstractRange -> (* function *);
isEditable : abstractRange -> boolean;
intersectsTag : abstractRange -> tagName -> boolean;
> = "goog.editor.range.narrow"

class external point : node -> number ->  <
getParentPoint : point;
createDeepestPoint : node -> number -> boolean(* opt? *) -> point;
getPointAtEndOfNode : node -> point;
saveUsingNormalizedCarets : abstractRange -> savedCaretRange;
> = "goog.editor.range.Point"

class external normalizedCaretRange_ 
inherit savedCaretRange: abstractRange ->  <
removeCarets : abstractRange(* opt? *) -> abstractRange(* | undefined *);
> = "goog.editor.range.NormalizedCaretRange_"
