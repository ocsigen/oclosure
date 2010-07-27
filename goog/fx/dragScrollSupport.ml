(**
   OClosure Project - 2010
   Class goog.fx.DragScrollSupport
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type dragScrollSupport = object
  inherit Disposable.disposable

  method disposeInternal : unit meth

  method onMouseMove : #Events.event t -> unit meth

  method setConstrainScroll : bool t -> unit meth
end

let tmp = Tools.variable "[oclosure]goog.fx.DragScrollSupport[/oclosure]"
let dragScrollSupport : (#Dom_html.element t -> int opt -> bool t opt 
  -> dragScrollSupport t) constr = tmp
  
