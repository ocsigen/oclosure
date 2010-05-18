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

type coordinate = JSOO.obj (*goog.math.Coordinate *)
type box = JSOO.obj (*goog.math.Box*)
type number

class external popup inherit popupbase : element ->
  <
    (**  Returns the corner of the popup to used in the positioning algorithm.*)
    getPinnedCorner : unit -> corner;

    (** Sets the corner of the popup to used in the positioning algorithm.*)
    setPinnedCorner : corner -> unit;

    (** Returns the position helper object associated with the popup.*)
    getPosition : unit -> abstractPosition;

    (** Sets the position helper object associated with the popup.*)
    setPosition : abstractPosition -> unit;

    (** Returns the margin to place around the popup.*)
    getMargin : unit -> box; (*in popup.js : "box" is "goog.math.Box?" *)

    (** Sets the margin to place around the popup*)
    setMargin : number -> unit; (* or goog.math.Box -> unit*)

    (** Repositions the popup according to the current state.*)
    reposition : unit -> unit;

    (** Positions a movable element relative to an anchorElement. The caller  
     * specifies the corners that should touch. This functions then moves the        * movable element accordingly.*)
    positionPopup : 
    element -> corner -> element -> corner -> (* optional argument : numb  er ->*) bool;
  
  (** Positions the specified corner of the movable element at the
       * specified coordinate.*)
    positionAtCoordinate : 
    coordinate -> element -> corner -> (* optional argument : goog.math.B  ox -> *) bool;
  > = "goog.ui.Popup"
