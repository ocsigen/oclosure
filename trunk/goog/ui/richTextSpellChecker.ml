(**
   OClosure Project - 2010
   Class goog.ui.RichTextSpellChecker
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js
open Tools

type element = Dom_html.element

class type richTextSpellChecker = object
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

(**
   Decorates the element for the UI component.
   
   @param {Element} element Element to decorate.
 *)
  method decorateInternal : element t -> unit meth

(** @inheritDoc *)
  method disposeInternal : unit meth

(**
   Called when the component's element is known to be in the document.
 *)
  method enterDocument : unit meth

(**
   Hides correction UI.
 *)
  method resume : unit meth

(** @inheritDoc *)
  method setExcludeMarker : (regExp t, js_string t) Union.t opt -> unit meth
end

let richTextSpellChecker : (richTextSpellChecker t Spell.SpellCheck.spellCheck t -> Gdom.DomHelper.domHelper t opt -> richTextSpellChecker t) constr = 
  Js.Unsafe.variable "goog.ui.RichTextSpellChecker"
