(**
   class goog.editor.plugins.RemoveFormatting

   @author Gabriel Cardoso
*)

open Js
open PluginField

class type removeFormatting = object
  inherit plugin
(*  method execCommandInternal : js_string t -> ? -> ? *)
  method getTrogClassId : js_string t meth
  method getValueForNode : #Dom.node t -> js_string t opt meth
  method handleKeyboardShortcut : Events.browserEvent t -> js_string t -> bool t
    -> bool t meth 
  method isSupportedCommand : js_string t -> bool t meth
  method setRemoveFormattingFunc : (js_string t -> js_string t) callback 
    -> unit meth
end

let tmp = Tools.variable 
    "[oclosure]goog.editor.plugins.RemoveFormatting[/oclosure]"
let removeFormatting : removeFormatting t constr = tmp
