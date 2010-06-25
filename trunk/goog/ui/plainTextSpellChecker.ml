(**
   OClosure Project - 2010
   Class goog.ui.PlainTextSpellChecker
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

type element = Dom_html.element

class type plainTextSpellChecker = object
  inherit AbstractSpellChecker.abstractSpellChecker

(**
   Checks spelling for all text and displays correction UI.
 *)
  method check : unit meth

(**
   Creates the initial DOM representation for the component.
   
   @throws {Error} Not supported. Use decorate.
   @see #decorate
 *)
  method createDom : unit meth

(** @inheritDoc *)
  method disposeInternal : unit meth

(**
   Called when the component's element is known to be in the document.
 *)
  method enterDocument : unit meth

(** @inheritDoc *)
  method exitDocument : unit meth

(**
   Handles key down for overlay.
   @param  e The browser event.
   @return The handled value.
*)
  method handleOverlayKeyEvent : 
      Events.BrowserEvent.browserEvent t -> bool t meth

(**
   Hides correction UI.
 *)
  method resume : unit meth
end

let plainTextSpellChecker : (plainTextSpellChecker t Spell.SpellCheck.spellCheck t -> Goog_dom.domHelper t opt -> plainTextSpellChecker t) constr = 
  Js.Unsafe.variable "goog.ui.PlainTextSpellChecker"
