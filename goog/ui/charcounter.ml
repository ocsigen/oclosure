(** 
    OClosure Project - 2010
    
    Class goog.ui.Charcounter

    @author : Oran Charles
    @version 0.2
*)
open EventTarget
open Js

module CharCounter = struct
  module Display = struct
    type t =  
	REMAINING
      |INCREMENTAL
  end
end

class type charCounter = object
  inherit eventTarget

  method setMaxLength : int -> unit  meth

  method getMaxLength : int  meth

  method setDisplayMode : int -> unit  meth

  method getDisplayMode : int  meth

  method disposeInternal : unit  meth
end

let tmp = Tools.variable "[oclosure]goog.ui.CharCounter[/oclosure]"
let charCounter : (#Dom_html.element t -> #Dom_html.element t -> int 
  -> CharCounter.Display.t opt -> charCounter t) constr = tmp
  

