(** 
    OClosure Project - 2010 
    Class goog.ui.PopupMenu
    
    @author Gabriel Cardoso
    @version 0.2
*)
open Js

class type popupMenu = object
  inherit Menu.menu

  method attach : #Dom_html.element t -> Positioning.corner opt -> 
    Positioning.corner opt -> bool t opt -> Math.box t opt -> unit meth

  method decorateInternal : #Dom_html.element t -> unit meth

  method detach : #Dom_html.element t -> unit meth

  method detachAll : unit meth

  method disposeInternal : unit meth

  method enterDocument : unit meth

  method getAttachedElement : Dom_html.element t meth
 
  method getToggleMode : bool t meth

  method hide : unit meth

  method setToggleMode : bool t -> unit meth

  method showAt : int -> int -> Positioning.corner opt -> unit meth

  method showAtElement : #Dom_html.element t -> Positioning.corner ->
    Positioning.corner opt -> unit meth

  method showWithPosition : Positioning.abstractPosition t -> 
    Positioning.corner opt -> Math.box t opt -> #Dom_html.element t opt ->
    unit meth
end

let tmp = Tools.variable "[oclosure]goog.ui.PopupMenu[/oclosure]"
let popupMenu : (Gdom.domHelper t opt -> popupMenu #Menu.menuRenderer t opt 
		   -> popupMenu t) constr = tmp
  
