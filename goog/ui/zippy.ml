(**
   OClosure Project - 2010
   Class goog.ui.Zippy
   
   @author : Oran Charles, Cardoso Gabriel
   @version 0.2
*)
open EventTarget

open Js
open Tools

class type zippy = object
  inherit eventTarget

  method collapse : unit meth

  method disposeInternal : unit  meth

  method expand : unit  meth

  method isBusy : bool t meth

  method isExpanded : bool t  meth

  method setExpanded : bool t -> unit meth

  method toggle : unit meth
end

let tmp = Tools.variable "[oclosure]goog.ui.Zippy[/oclosure]" 
let zippy : ((#Dom_html.element t, js_string t) Union.t opt 
	  -> (#Dom_html.element t, js_string t) Union.t opt -> bool t opt 
	  -> (#Dom_html.element t, js_string t) Union.t opt 
	  -> zippy t) constr = tmp

let zippy_lazy : ((#Dom_html.element t, js_string t) Union.t opt 
	  -> (unit -> Dom_html.element t) callback -> bool t opt 
	  -> (#Dom_html.element t, js_string t) Union.t opt 
	  -> zippy t) constr = tmp
