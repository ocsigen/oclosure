
(** 
    * OClosure Project - 2010
    * Class goog.ui.PlainTextSpellChecker
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open EventType  (* goog.ui.Component.EventType *)
open AsyncResult  (* goog.ui.AbstractSpellChecker.AsyncResult *)
open AbstractSpellChecker  (* goog.ui.AbstractSpellChecker *)
open Style  (* goog.style *)
open EventType  (* goog.events.KeyHandler.EventType *)
open KeyHandler  (* goog.events.KeyHandler *)
open KeyCodes  (* goog.events.KeyCodes *)
open EventType  (* goog.events.EventType *)
open EventHandler  (* goog.events.EventHandler *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)

class external plainTextSpellChecker 
inherit abstractSpellChecker: spellCheck -> domHelper(* opt? *) ->  <
createDom : unit;
enterDocument : unit;
exitDocument : unit;
initSuggestionsMenu : unit;
check : unit;
processWord : node -> string -> wordStatus -> unit;
processRange : node -> string -> unit;
resume : unit;
getElementProperties : wordStatus -> object;
disposeInternal : unit;
handleOverlayKeyEvent : browserEvent -> boolean;
onCorrectionAction : event -> unit;
> = "goog.ui.PlainTextSpellChecker"
