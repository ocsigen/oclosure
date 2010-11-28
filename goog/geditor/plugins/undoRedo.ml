(**
   class goog.editor.plugins.UndoRedo

   @author Gabriel Cardoso
*)

open Js
open UndoRedoManager
open PluginField


class type undoRedo = object
  inherit plugin
  method clearHistory : unit meth
  method disable : field t -> unit meth
  method disposeInternal : unit meth
  method enable : field t -> unit meth
(*  method execCommand : js_string t*)
  method getCurrentEventTarget : field t meth
  method getCurrentFieldObject : field t meth
  method getFieldObject : js_string t -> field t meth
  method getTrogClassId : js_string t meth
  method handleKeyboardShortcut : #Events.browserEvent t -> js_string t 
    -> bool t -> bool t meth 
  method isEnabled : field t -> bool t meth
  method isSupportedCommand : js_string t -> bool t meth
(*  method queryCommandValue : js_strig t*)
  method refreshCurrentState : field t -> unit meth
  method registerFieldObject : field t -> unit meth
(*  method restoreState*)
  method setMaxUndoDepth : int -> unit meth
  method setUndoRedoManager : undoRedoManager t -> unit meth
  method unregisterFieldObject : field t -> unit meth
end

let undoRedo : (undoRedoManager t opt -> undoRedo t) constr = 
  Tools.variable "[oclosure]goog.editor.plugins.UndoRedo[/oclosure]"
