(* OClosure - 2010 *
 * Esther Baruk    *
 * goog.ui.Popup   *
 *)
open Popupbase
open AbstractPosition

type corner = JSOO.obj (*goog.positioning.Corner *)
type element = JSOO.obj 
type coordinate = JSOO.obj (*goog.math.Coordinate *)
type box = JSOO.obj (*goog.math.Box*)
type number

class external popup inherit popupbase : element ->
  <
  setPinnedCorner : corner -> unit;
  getPosition : unit -> abstractPosition;
  setPosition : abstractPosition -> unit;
  getMargin : unit -> box; (*in popup.js : "box" is "goog.math.Box?" *)
  setMargin : number -> unit; (* or goog.math.Box -> unit*)
  reposition : unit -> unit;
  positionPopup : 
    element -> corner -> element -> corner -> (* optional argument : number ->*) bool;
  positionAtCoordinate : 
    coordinate -> element -> corner -> (* optional argument : goog.math.Box -> *) bool;
  > = "goog.ui.Popup";;
