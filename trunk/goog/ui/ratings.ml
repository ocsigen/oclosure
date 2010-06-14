(** 
    * OClosure Project - 2010
    * Class goog.ui.Ratings
    *
    * A UI Control used for rating things, i.e. videos on Google Video.
    *
    * @author : Oran Charles
    * @version 0.1
    * @see 'goog.ui.Component'
*)
open Component

type element = Dom.element

open Js
class type ratings = object
  inherit component
  (** Decorate a HTML structure already in the document.  Expects the structure:
      * - div
      *   - select
      *       - option 1 #text = 1 star
      *       - option 2 #text = 2 stars
      *       - option 3 #text = 3 stars
      *       - option N (where N is max number of ratings)
      *
      The div can contain other elements for graceful degredation, but they will be 
      hidden when the decoration occurs. **)
  method decoreInternal : element -> unit meth
 
 (** Render the rating widget inside the provided element. This will override the
     current content of the element. **)
  method enterDocument : unit -> unit meth

 (** Should be called when the widget is removed from the document but may be
     reused.  This removes all the listeners the widget has attached and destroys. **)
  method exitDocument : unit -> unit meth

 (** @inheritDoc **)
  method disposeInternal : unit -> unit meth

 (** Returns the base CSS class used by subcomponents of this component. **)
  method getCssClass : unit -> js_string t meth

 (** Sets the selected index. If the provided index is greater than the number of
     ratings then the max is set.  0 is the first item, -1 is no selection. **)
  method setSelectedIndex : float -> unit meth

 (** The index of the currently selected rating. **)
  method getSelectedIndex : unit -> float meth

 (** Returns the rating value of the currently selected rating. **)
  method getValue : unit -> js_string t meth

 (** Returns the index of the currently highlighted rating, -1 if the mouse isn't
     currently over the widget. **)
  method getHighlightedIndex : unit -> float meth

 (** Returns the value of the currently highlighted rating, null if the mouse
     isn't currently over the widget. **)
  method getHighlightedValue : unit -> js_string t meth

 (** Sets the array of ratings that the comonent. **)
  method setRatings : js_string t array -> unit meth

 (** Gets the array of ratings that the component. **)
  method getRatings : unit -> js_string t array meth

 (** Attaches an input or select element to the ratings widget. The value or
     index of the field will be updated along with the ratings widget. **)
  method setAttachedFormField : unit -> element meth

end

let ratings : (unit -> ratings t) constr =
  Js.Unsafe.variable "goog.ui.Ratings"

(** Enums for Ratings event type **)
let eventType_Change = "change" 
let eventType_HighLightChange = "highlightchange"
let eventType_HighLight = "highlight"
let eventType_UnHighLight = "unhighlight"


