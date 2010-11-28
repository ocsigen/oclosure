(**
   class goog.editor.plugins.Blockquote

   @author Gabriel Cardoso
*)

open Js
open PluginField

class type blockquote = object
  inherit plugin
(*  method execCommandInternal : js_string t -> ? -> bool t optdef meth *)
  method getTrogClassId : js_string t meth
  method isSetupBlockquote : #Dom.node t -> bool t meth
  method isSilentCommand : js_string t -> bool t meth
  method isSupportedCommand : js_string t -> bool t meth
end

let tmp = Tools.variable "[oclosure]goog.editor.plugins.Blockquote[/oclosure]"
let blockquote : (bool t -> js_string t opt -> blockquote t) constr = tmp
