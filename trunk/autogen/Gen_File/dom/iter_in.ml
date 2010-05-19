
(** 
    * OClosure Project - 2010
    * Class goog.dom.iter.SiblingIterator, goog.dom.iter.ChildIterator, goog.dom.iter.AncestorIterator
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open StopIteration  (* goog.iter.StopIteration *)
open Iterator  (* goog.iter.Iterator *)

class external siblingIterator 
inherit iterator: node -> boolean(* opt? *) -> boolean(* opt? *) ->  <
next : unit;
> = "goog.dom.iter.SiblingIterator"

class external childIterator 
inherit siblingIterator: element -> boolean(* opt? *) -> number(* opt? *) ->  <
> = "goog.dom.iter.ChildIterator"

class external ancestorIterator 
inherit iterator: node -> boolean(* opt? *) ->  <
next : unit;
> = "goog.dom.iter.AncestorIterator"
