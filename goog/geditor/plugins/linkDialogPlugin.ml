(** 
   class goog.editor.plugins.LinkDialogPlugin

   @author Gabriel Cardoso
*)

open Js
open AbstractDialogPlugin

class type linkDialogPlugin = object
  inherit abstractDialogPlugin
  method disposeInternal : unit meth
  method getTrogClassId : js_string t meth
  method setEmailWarning : js_string t -> unit meth
  method stopReferrerLeaks : unit meth
end

let tmp = Tools.variable 
    "[oclosure]goog.editor.plugins.LinkDialogPlugin[/oclosure]"
let linkDialogPlugin : linkDialogPlugin t constr = tmp
