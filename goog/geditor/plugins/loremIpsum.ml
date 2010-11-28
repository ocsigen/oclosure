(**
   class goog.editor.plugins.LoremIpsum

   @author Gabriel Cardoso
*)

open Js
open PluginField

class type loremIpsum = object 
  inherit plugin
  method activeOnUneditableFields : bool t meth
  method execCommand : js_string t -> bool t -> unit meth
  method getTrogClassId : js_string t meth
  method isSupportedCommand : js_string t -> bool t meth
  method queryCommandValue : js_string t -> bool t meth
end

let tmp = Tools.variable "[oclosure]goog.editor.plugins.LoremIpsum[/oclosure]"
let loremIpsum : (js_string t -> loremIpsum t) constr = tmp
