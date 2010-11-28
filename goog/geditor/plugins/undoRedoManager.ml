(**
   class goog.editor.plugins.UndoRedoManager

   @author Gabriel Cardoso
*)

open Js
open UndoRedoState

class type undoRedoManager = object
  inherit Events.eventTarget
  method addState : undoRedoState t -> unit meth
  method clearHistory : unit meth
  method hasRedoState : bool t meth
  method hasUndoState : bool t meth
  method redo : unit meth
  method redoPeek : undoRedoState t optdef meth
  method setMaxUndoDepth : int -> unit meth
  method undo : unit meth
  method undoPeek : undoRedoState t optdef meth
end

let undoRedoManager : undoRedoManager t constr = Tools.variable 
    "[oclosure]goog.editor.plugins.UndoRedoManager[/oclosure]"
