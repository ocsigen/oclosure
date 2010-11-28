(**
   class goog.editor.plugins.HeaderFormatter

   @author Gabriel Cardoso
*)

open Js
open PluginField
open Events 

class type headerFormatter = object
  inherit plugin 
  method getTrogClassId : js_string t
  method handleKeyboardShortcut : 
      browserEvent t -> js_string t -> bool t -> bool t meth
end

let tmp = Tools.variable 
    "[oclosure]goog.editor.plugins.HeaderFormatter[/oclosure]"
let headerFormatter : headerFormatter t constr = tmp
