(**
   class goog.editor.plugins.AbstractTabHandler

   @author Gabriel Cardoso
*)

open Js
open PluginField
open Events

class type abstractTabHandler = object
  inherit plugin
  method getTrogClassId : js_string t meth
  method handleKeyboardShortcut : browserEvent t -> js_string t -> bool t 
    -> bool t meth
end
