(**
   class goog.editor.plugins.TagOnEnterHandler

   @author Gabriel Cardoso
*)

open Js
open EnterHandler

class type tagOnEnterHandler = object
  inherit enterHandler
  method activeOnUneditableFields : bool t meth
  method getNonCollapsingBlankHtml : js_string t meth
  method getTrogClassId : js_string t meth
  method handleBackspaceInternal : #Events.event t -> #Gdom.abstractRange t 
      -> unit meth
  method handleDeleteGecko : #Events.event t -> unit meth
  method handleEnterAtCursorGeckoInternal : #Events.event t -> bool t -> 
    #Gdom.abstractRange t -> unit meth
  method handleEnterWebkitInternal : #Events.browserEvent t -> unit meth
  method handleKeyUpInternal : #Events.event t -> unit meth
  method isSupportedCommand : js_string t -> bool t meth
  method processParagraphTagsInternal : #Events.event t -> bool t meth 
    -> unit meth
(*  method queryCommandValue : js_string t -> ? *)
end

let tagOnEnterHandler : (Gdom.tagName -> tagOnEnterHandler t) constr =
  Tools.variable "[oclosure]goog.editor.plugins.TagOnEnterHandler[/oclosure]"
