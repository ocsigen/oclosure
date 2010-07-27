(** 
    OClosure Project - 2010
    
    Class goog.ui.Ratings
    
    @author Oran Charles
    @version 0.2
*)
open Component
open Js

class type ratings = object
  inherit component
  method decoreInternal : #Dom_html.element t -> unit meth
  method enterDocument : unit meth
  method exitDocument : unit meth
  method disposeInternal : unit meth
  method getCssClass : js_string t meth
  method setSelectedIndex : int -> unit meth
  method getSelectedIndex : int meth
  method getValue : js_string t meth
  method getHighlightedIndex : int meth
  method getHighlightedValue : js_string t meth
  method setRatings : string js_array t  -> unit meth
  method getRatings : string js_array t meth
  method setAttachedFormField : #Dom_html.element t -> unit meth
  method getAttachedFormField : Dom_html.element t meth
end

let ratings : ratings t constr =
  Tools.variable "[oclosure]goog.ui.Ratings[/oclosure]" 

module Ratings = struct 
  module Display = struct
    let _CHANGE = Js.string "change"
    let _HIGHLIGHT_CHANGE = Js.string "highlightchange"
    let _HIGHLIGHT = Js.string "highlight"
    let _UNHIGHLIGHT = Js.string "unhighlight"
  end
end


