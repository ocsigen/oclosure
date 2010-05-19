
(** 
    * OClosure Project - 2010
    * Class goog.editor.Link
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Utils  (* goog.uri.utils *)
open Unicode  (* goog.string.Unicode *)
open Range  (* goog.editor.range *)
open Node  (* goog.editor.node *)
open BrowserFeature  (* goog.editor.BrowserFeature *)
open Range  (* goog.dom.Range *)
open NodeType  (* goog.dom.NodeType *)
open Dom  (* goog.dom *)

class external link : hTMLAnchorElement -> boolean ->  <
getAnchor : hTMLAnchorElement;
getCurrentText : string;
isNew : boolean;
initializeUrl : string -> unit;
removeLink : unit;
setTextAndUrl : string -> string -> unit;
placeCursorRightOf : unit;
createNewLink : hTMLAnchorElement -> string -> string(* opt? *) -> link;
isLikelyUrl : string -> boolean;
isLikelyEmailAddress : string -> boolean;
isMailto : string -> boolean;
> = "goog.editor.Link"
