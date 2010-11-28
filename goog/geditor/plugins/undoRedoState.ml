(**
   class goog.editor.plugins.UndoRedoState

   @author Gabriel Cardoso
*)

open Js

class type undoRedoState = object
  inherit Events.eventTarget
  method equals : undoRedoState t -> bool t meth
  method isAsynchronous : bool t meth
  method redo : unit meth
  method undo : unit meth
end

let undoRedoState : (bool t -> undoRedoState t) constr = Tools.variable
    "[oclosure]goog.editor.plugins.UndoRedoState[/oclosure]"
