(**
   class goog.editor.plugins.AbstractDialogPlugin

   @author Gabriel Cardoso
*)

open Js
open PluginField

class type abstractDialogPlugin = object
  inherit plugin
  method disposeInternal : unit meth
  (* method execCommand *)
  method isSupportedCommand : js_string t -> bool t meth
end
