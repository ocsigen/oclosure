
(** 
    * OClosure Project - 2010
    * Class goog.ui.AbstractSpellChecker.AsyncResult, goog.ui.AbstractSpellChecker
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open PopupMenu  (* goog.ui.PopupMenu *)
open MenuSeparator  (* goog.ui.MenuSeparator *)
open MenuItem  (* goog.ui.MenuItem *)
open Style  (* goog.style *)
open Set  (* goog.structs.Set *)
open SpellCheck  (* goog.spell.SpellCheck *)
open Coordinate  (* goog.math.Coordinate *)
open EventType  (* goog.events.EventType *)
open Selection  (* goog.dom.selection *)
open Classes  (* goog.dom.classes *)
open Dom  (* goog.dom *)

class external abstractSpellChecker 
inherit component: spellCheck -> domHelper(* opt? *) ->  <
getHandler : spellCheck;
setHandler : spellCheck -> unit;
setExcludeMarker : regExp(* | string| null *) -> unit;
check : unit;
resume : unit;
isVisible : boolean;
ignoreWord : string -> unit;
replaceWord : element -> string -> string -> unit;
showSuggestionsMenu : element -> browserEvent(* | coordinate(* opt? *) *) -> unit;
initSuggestionsMenu : unit;
onCorrectionAction : event -> unit;
removeMarkup : element -> unit;
updateElement : element -> string -> wordStatus -> unit;
makeElementId : number(* opt? *) -> string;
getElementById : number -> element;
getElementProperties : wordStatus -> unit;
disposeInternal : unit;
populateDictionary : string -> number -> number;
processWord : node -> string -> wordStatus -> unit;
processRange : node -> string -> unit;
initializeAsyncMode : unit;
finishAsyncProcessing : unit;
blockReadyEvents : unit;
unblockReadyEvents : unit;
processTextAsync : node -> string -> asyncResult;
continueAsyncProcessing : asyncResult;
> = "goog.ui.AbstractSpellChecker"
