(**
   OClosure Project - 2010
   Class goog.ui.AbstractSpellChecker

   @author Cardoso Gabriel
   @version 0.2
*)

open Js
open Tools

class type abstractSpellChecker = object ('self)
  inherit Component.component

  method check : unit meth

  method disposeInternal : unit meth

  method getHandler : 'self t Spell.spellCheck t meth

  method ignoreWord : js_string t -> unit meth

  method isVisible : bool t meth

  method replaceWord : #Dom_html.element t -> js_string t -> js_string t -> unit meth

  method resume : unit meth

  method setExcludeMarker : (Js.regExp t, js_string t) Union.t opt -> unit meth

  method setHandler : 'self t Spell.spellCheck t -> unit meth

  method showSuggestionsMenu : #Dom_html.element t -> (Events.browserEvent t, Math.coordinate t) Union.t opt -> unit meth

  method markCorrected : bool t prop
end
