
(** 
    * OClosure Project - 2010
    * Class goog.editor.node
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Unicode  (* goog.string.Unicode *)
open String  (* goog.string *)
open Object  (* goog.object *)
open Iter  (* goog.iter *)
open SiblingIterator  (* goog.dom.iter.SiblingIterator *)
open ChildIterator  (* goog.dom.iter.ChildIterator *)
open TagName  (* goog.dom.TagName *)
open NodeType  (* goog.dom.NodeType *)
open Dom  (* goog.dom *)

class external bLOCK_TAG_NAMES_ :  <
isStandardsMode : node -> boolean;
getRightMostLeaf : node -> node;
getLeftMostLeaf : node -> node;
getFirstChild : node -> node;
getLastChild : node -> node;
getPreviousSibling : node -> node;
getNextSibling : node -> node;
isImportant : node -> boolean;
isAllNonNbspWhiteSpace : node -> boolean;
isEmpty : node -> boolean(* opt? *) -> boolean;
getActiveElementIE : document -> element;
getLength : node -> number;
findInChildren : node -> (* function *) -> number(* opt? *);
findHighestMatchingAncestor : node -> (* function *) -> node;
isBlockTag : node -> boolean;
skipEmptyTextNodes : node -> node;
isEditableContainer : node -> boolean;
isEditable : node -> boolean;
findTopMostEditableAncestor : node -> (* function *) -> node;
splitDomTreeAt : node(* opt? *) -> node(* opt? *) -> node(* opt? *) -> node(* opt? *);
transferChildren : node -> node -> unit;
> = "goog.editor.node.BLOCK_TAG_NAMES_"
