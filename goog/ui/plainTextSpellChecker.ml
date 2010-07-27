(**
   OClosure Project - 2010
   Class goog.ui.PlainTextSpellChecker
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type plainTextSpellChecker = object
  inherit AbstractSpellChecker.abstractSpellChecker
  method check : unit meth
  method createDom : unit meth
  method disposeInternal : unit meth
  method enterDocument : unit meth
  method exitDocument : unit meth
  method handleOverlayKeyEvent : 
      Events.browserEvent t -> bool t meth
  method resume : unit meth
end

let plainTextSpellChecker : (plainTextSpellChecker t Spell.spellCheck t -> Gdom.domHelper t opt -> plainTextSpellChecker t) constr = 
  Tools.variable "[oclosure]goog.ui.PlainTextSpellChecker[/oclosure]"
