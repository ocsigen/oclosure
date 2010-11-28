(**
   class goog.editor.plugins.Emoticons

   @author Gabriel Cardoso
*)

open Js
open PluginField

class type emoticons = object 
  inherit plugin
(*  method execCommandInternal : js_string t -> ? -> ? *)
  method getTrogClassId : js_string t meth
  method isSupportedCommand : js_string t -> bool t meth
end

let tmp = Tools.variable "[oclosure]goog.editor.plugins.Emoticons[/oclosure]"
let emoticons : emoticons t constr = tmp
