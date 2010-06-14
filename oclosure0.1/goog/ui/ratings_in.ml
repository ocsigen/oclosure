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

type element = JSOO.obj

class external ratings inherit component : unit ->
<
  (** Decorate a HTML structure already in the document.  Expects the structure:
      * <pre>
      * - div
      *   - select
      *       - option 1 #text = 1 star
      *       - option 2 #text = 2 stars
      *       - option 3 #text = 3 stars
      *       - option N (where N is max number of ratings)
      * </pre>
      *
      The div can contain other elements for graceful degredation, but they will be 
      hidden when the decoration occurs. **)
  decoreInternal : element -> unit;
 
 (** Render the rating widget inside the provided element. This will override the
     current content of the element. **)
 enterDocument : unit -> unit;

 (** Should be called when the widget is removed from the document but may be
     reused.  This removes all the listeners the widget has attached and destroys. **)
 exitDocument : unit -> unit;

 (** @inheritDoc **)
 disposeInternal : unit -> unit;

 (** Returns the base CSS class used by subcomponents of this component. **)
 getCssClass : unit -> string;

 (** Sets the selected index. If the provided index is greater than the number of
     ratings then the max is set.  0 is the first item, -1 is no selection. **)
 setSelectedIndex : float -> unit;

 (** The index of the currently selected rating. **)
 getSelectedIndex : unit -> float;

 (** Returns the rating value of the currently selected rating. **)
 getValue : unit -> string;

 (** Returns the index of the currently highlighted rating, -1 if the mouse isn't
     currently over the widget. **)
 getHighlightedIndex : unit -> float;

 (** Returns the value of the currently highlighted rating, null if the mouse
     isn't currently over the widget. **)
 getHighlightedValue : unit -> string;

 (** Sets the array of ratings that the comonent. **)
 setRatings : string array -> unit;

 (** Gets the array of ratings that the component. **)
 getRatings : unit -> string array;

 (** Attaches an input or select element to the ratings widget. The value or
     index of the field will be updated along with the ratings widget. **)
 setAttachedFormField : unit -> element;

> = "goog.ui.Ratings"

(** Enums for Ratings event type **)
let eventType_Change = "change" 
let eventType_HighLightChange = "highlightchange"
let eventType_HighLight = "highlight"
let eventType_UnHighLight = "unhighlight"


