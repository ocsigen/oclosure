
(** 
    * OClosure Project - 2010
    * Class goog.testing.dom
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Asserts  (* goog.testing.asserts *)
open Style  (* goog.style *)
open String  (* goog.string *)
open Object  (* goog.object *)
open Iter  (* goog.iter *)
open Classes  (* goog.dom.classes *)
open TagName  (* goog.dom.TagName *)
open TagIterator  (* goog.dom.TagIterator *)
open NodeType  (* goog.dom.NodeType *)
open NodeIterator  (* goog.dom.NodeIterator *)
open Dom  (* goog.dom *)

class external eND_TAG_MARKER_ :  <
assertNodesMatch : iterator -> (* Array[node(* | number| string *)] *) -> unit;
exposeNode : node -> string;
exposeRange : abstractRange -> string;
assertHtmlContentsMatch : string -> element(* opt? *) -> boolean(* opt? *) -> unit;
assertHtmlMatches : string -> string -> unit;
findTextNode : string(* | regExp *) -> element -> node;
assertRangeEquals : node -> number -> node -> number -> abstractRange -> unit;
> = "goog.testing.dom.END_TAG_MARKER_"
