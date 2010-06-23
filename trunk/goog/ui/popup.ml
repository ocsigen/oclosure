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

type coordinate (*goog.math.Coordinate *)
type box (*goog.math.Box*)

open Js
class type popup = object
  inherit popupBase
    (**  Returns the corner of the popup to used in the positioning algorithm.*)
  method getPinnedCorner : corner meth

    (** Sets the corner of the popup to used in the positioning algorithm.*)
  method setPinnedCorner : corner -> unit meth

    (** Returns the position helper object associated with the popup.*)
  method getPosition : abstractPosition meth

    (** Sets the position helper object associated with the popup.*)
  method setPosition : abstractPosition -> unit meth

    (** Returns the margin to place around the popup.*)
  method getMargin : box meth

    (** Sets the margin to place around the popup*)
  method setMargin : number -> unit meth

    (** Repositions the popup according to the current state.*)
  method reposition : unit meth

    (** Positions a movable element relative to an anchorElement. The caller  
     * specifies the corners that should touch. This functions then moves the        * movable element accordingly.*)
  method positionPopup : element -> corner -> element -> corner -> (* optional argument : numb  er ->*) bool meth
  
  (** Positions the specified corner of the movable element at the
     specified coordinate.*)
  method positionAtCoordinate : coordinate -> element -> corner -> (* optional argument : goog.math.B  ox -> *) bool meth
end

let popup : (element -> popup t) constr =
  Js.Unsafe.variable "goog.ui.Popup"
