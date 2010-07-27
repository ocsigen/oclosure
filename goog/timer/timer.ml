(**
   OClosure Project - 2010

   Class goog.Timer
   
   @author : Oran Charles
   @version 0.2
   @see 'goog.events.EventTarget'
 *)

open Js
class type timer = object
  inherit Events.eventTarget

  method getInterval : int meth

  method setInterval : int -> unit meth

  method dispatchTick : unit meth
    
  method start : unit meth
    
  method stop : unit meth

  method disposeInternal : unit meth
    
  method clear : int -> unit meth

end

let timer : (int opt -> timer t) constr =
  Tools.variable "[oclosure]goog.Timer[/oclosure]"
