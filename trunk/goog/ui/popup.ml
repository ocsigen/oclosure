(** 
    * OClosure Project - 2010 
    * Class goog.ui.Popup
    * 
    * The Popup class provides functionality for displaying 
    * an absolutely positioned element at a particular location 
    * in the window. It's designed to be used as the foundation 
    * for building controls like a menu or tooltip. The Popup 
    * class includes functionality for displaying a Popup near 
    * adjacent to an anchor element. This works cross browser 
    * and thus does not use IE's createPopup feature which 
    * supports extending outside the edge of the browser window.
    * 
    * @author Esther Baruk
    * @version 0.1
    * @see 'goog.ui.PopupBase'
    * @see 'goog.positioning.AbstractPosition'
*)
open PopupBase
open AbstractPosition

open Js

open Tools

class type popup = object
  inherit popupBase
    (**  Returns the corner of the popup to used in the positioning algorithm.*)
  method getPinnedCorner : Positioning.Corner.t meth

    (** Sets the corner of the popup to used in the positioning algorithm.*)
  method setPinnedCorner : Positioning.Corner.t -> unit meth

    (** Returns the position helper object associated with the popup.*)
  method getPosition : abstractPosition t meth

    (** Sets the position helper object associated with the popup.*)
  method setPosition : abstractPosition t -> unit meth

    (** Returns the margin to place around the popup.*)
  method getMargin : Math.Box.box t opt meth

    (** Sets the margin to place around the popup*)
  method setMargin : (Math.Box.box t, int) Union.t opt -> int opt -> int opt -> int opt -> unit meth

    (** Repositions the popup according to the current state.*)
  method reposition : unit meth
end

let popup : (Dom_html.element t opt -> abstractPosition t -> popup t) constr =
  Js.Unsafe.variable "goog.ui.Popup"
