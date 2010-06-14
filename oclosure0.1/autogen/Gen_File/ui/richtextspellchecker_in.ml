
(** 
    * OClosure Project - 2010
    * Class goog.ui.RichTextSpellChecker
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open AsyncResult  (* goog.ui.AbstractSpellChecker.AsyncResult *)
open AbstractSpellChecker  (* goog.ui.AbstractSpellChecker *)
open StringBuffer  (* goog.string.StringBuffer *)
open EventType  (* goog.events.EventType *)
open Events  (* goog.events *)
open NodeType  (* goog.dom.NodeType *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)

class external richTextSpellChecker 
inherit abstractSpellChecker: spellCheck -> domHelper(* opt? *) ->  <
createDom : unit;
decorateInternal : element -> unit;
enterDocument : unit;
check : unit;
setExcludeMarker : unit;
processWord : node -> string -> wordStatus -> unit;
processRange : node -> string -> unit;
updateElement : element -> string -> wordStatus -> unit;
resume : unit;
getElementProperties : wordStatus -> object;
disposeInternal : unit;
> = "goog.ui.RichTextSpellChecker"
