(**
   class goog.editor.plugins.EnterHandler
   
   @author Gabriel Cardoso
*)

open Js
open PluginField

class type enterHandler = object
  inherit plugin
  method getTrogClassId : js_string t meth
  method handleKeyPress : Events.browserEvent t -> bool t meth
  method handlerKeyUp : Events.browserEvent t -> bool t meth
(*  method prepareContentsHtml : js_string t -> ? -> js_string t meth *)
end

let tmp = Tools.variable "[oclosure]goog.editor.plugins.EnterHandler[/oclosure]"
let enterHandler : enterHandler t constr = tmp
