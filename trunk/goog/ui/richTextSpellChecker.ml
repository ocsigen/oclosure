(**
   OClosure Project - 2010
   Class goog.ui.RichTextSpellChecker
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js
open Tools

class type richTextSpellChecker = object
  inherit AbstractSpellChecker.abstractSpellChecker
  method check : unit meth
  method createDom : unit meth
  method decorateInternal : #Dom_html.element t -> unit meth
  method disposeInternal : unit meth
  method enterDocument : unit meth
  method resume : unit meth
  method setExcludeMarker : (regExp t, js_string t) Union.t opt -> unit meth
end

let richTextSpellChecker : (richTextSpellChecker t Spell.spellCheck t -> Gdom.domHelper t opt -> richTextSpellChecker t) constr = 
  Js.Unsafe.variable "goog.ui.RichTextSpellChecker"
