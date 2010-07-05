(** 
    OClosure Project - 2010
    
    Class goog.ui.Ratings
    
    @author : Oran Charles
    @version 0.2
    @see 'goog.ui.Component'
*)
open Component
open Js

class type ratings = object
  inherit component

  (** Decorate a HTML structure already in the document.  Expects the structure:
      - div
      - select
      - option 1 #text = 1 star
      - option 2 #text = 2 stars
      - option 3 #text = 3 stars
      - option N (where N is max number of ratings)

      The div can contain other elements for graceful degredation, but they will be hidden when the decoration occurs. *)
  method decoreInternal : Dom_html.element t -> unit meth
    
  (** Render the rating widget inside the provided element. This will override the current content of the element. *)
  method enterDocument : unit meth
    
  (** Should be called when the widget is removed from the document but may be reused. This removes all the listeners the widget has attached and destroys. *)
  method exitDocument : unit meth
    
  (** @inheritDoc *)
  method disposeInternal : unit meth
    
  (** Returns the base CSS class used by subcomponents of this component. *)
  method getCssClass : js_string t meth

 (** Sets the selected index. If the provided index is greater than the number of ratings then the max is set.  0 is the first item, -1 is no selection. *)
  method setSelectedIndex : int -> unit meth

 (** The index of the currently selected rating. *)
  method getSelectedIndex : int meth

 (** Returns the rating value of the currently selected rating. *)
  method getValue : js_string t meth

 (** Returns the index of the currently highlighted rating, -1 if the mouse isn't currently over the widget. *)
  method getHighlightedIndex : int meth

 (** Returns the value of the currently highlighted rating, null if the mouse isn't currently over the widget. *)
  method getHighlightedValue : js_string t meth

 (** Sets the array of ratings that the comonent. *)
  method setRatings : string js_array t  -> unit meth

 (** Gets the array of ratings that the component. *)
  method getRatings : string js_array t meth

 (** Attaches an input or select element to the ratings widget. The value or index of the field will be updated along with the ratings widget. *)
  method setAttachedFormField : Dom_html.element t meth

end

(** 
    A UI Control used for rating things, i.e. videos on Google Video.
    @param {Array.<string>=} opt_ratings Ratings. Default: [1,2,3,4,5].
    @param {goog.dom.DomHelper=} opt_domHelper Optional DOM helper.
    @constructor
*)
let ratings : ratings t constr =
  Js.Unsafe.variable "goog.ui.Ratings" 

module Ratings = struct 
  (** Enums for Ratings event type.
      @enum *)
  module Display = struct
    let _CHANGE = Js.string "change"
    let _HIGHLIGHT_CHANGE = Js.string "highlightchange"
    let _HIGHLIGHT = Js.string "highlight"
    let _UNHIGHLIGHT = Js.string "unhighlight"
  end

end


