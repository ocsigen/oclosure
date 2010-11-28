(**
   class goog.editor.plugins.BasicTextFormatter

   @author Gabriel Cardoso
*)

open Js
open PluginField
open Events

class type basicTextFormatter = object
  inherit plugin
  method cleanContentsDom : #Dom_html.element t -> unit meth
  method cleanContentsHtml : js_string t -> js_string t meth
(*  method execCommandInternal : js_string t -> ? -> ? meth *)
  method getTrogClassId : js_string t meth
  method handleKeyboardShortcut : browserEvent t -> js_string t -> bool t 
      -> bool t meth
  method isSupportedCommand : js_string t -> bool t meth
(*  method prepareContentsHtml : js_string t -> ? -> js_string t meth*)
  method queryCommandValue : js_string t -> js_string t meth
end

let tmp = Tools.variable 
    "[oclosure]goog.editor.plugins.BasicTextFormatter[/oclosure]"
let basicTextFormatter : basicTextFormatter t constr = tmp
