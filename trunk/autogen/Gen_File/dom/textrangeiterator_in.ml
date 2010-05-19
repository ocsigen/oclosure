
(** 
    * OClosure Project - 2010
    * Class goog.dom.TextRangeIterator
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open StopIteration  (* goog.iter.StopIteration *)
open TagName  (* goog.dom.TagName *)
open RangeIterator  (* goog.dom.RangeIterator *)
open NodeType  (* goog.dom.NodeType *)
open Array  (* goog.array *)

class external textRangeIterator 
inherit rangeIterator: node -> number -> node -> number -> boolean(* opt? *) ->  <
getStartTextOffset : unit;
getEndTextOffset : unit;
getStartNode : unit;
setStartNode : node -> unit;
getEndNode : unit;
setEndNode : node -> unit;
isLast : unit;
next : node;
skipTag : unit;
copyFrom : textRangeIterator -> unit;
clone : textRangeIterator;
> = "goog.dom.TextRangeIterator"
