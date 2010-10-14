(*
   Class goog.ui.editor.ToolbarController

   @author Gabriel Cardoso
*)

open Js
open Toolbar

class type toolbarController = object
  inherit Events.eventTarget
  method blur : unit meth
  method disposeInternal : unit meth
  method getToolbar : toolbar t meth
  method isEnabled : bool t meth
  method isVisible : bool t meth
  method setEnabled : bool t -> unit meth
  method setVisible : bool t -> unit meth
end

let toolbarController : 
    (Geditor.field t -> toolbar t -> toolbarController t) constr =
  Tools.variable "[oclosure]goog.ui.editor.ToolbarController[/oclosure]"
