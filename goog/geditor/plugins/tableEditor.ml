(**
   class goog.editor.plugins.TableEditor

   @author Gabriel Cardoso
*)

open Js
open PluginField

class type tableEditor = object
  inherit plugin
  method addIsTableEditableFunction : (#Dom_html.element t -> bool t) callback
      -> unit meth
  method enable : field t -> unit meth
(*  method execCommandInternal : js_string t -> ? -> ?*)
  method getTrogClassId : js_string t meth
  method isSupportedCommand : js_string t -> bool t meth
(*  method queryCommandValue : js_string t -> *)
end

let tmp = Tools.variable "[oclosure]goog.editor.plugins.TableEditor[/oclosure]"
let tableEditor : tableEditor t constr = tmp
