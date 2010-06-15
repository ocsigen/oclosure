(**
   * OClosure Project - 2010
   * Class goog.ui.AutoComplete
   *
   * This is the central manager class for an AutoComplete instance.
   * 
   * @author : Oran Charles
   * @version 0.1
   * @see 'goog.events.EventTarget'
   * @see 'goog.events.Event'
*)
open EventTarget
open Event
open Js

type obj = Dom_html.element t

class type autocomplete = object
  inherit eventTarget
  
  (** Returns the renderer that renders/shows/highlights/hides the autocomplete menu. *)
  method getRenderer : unit -> eventTarget meth

 (** Generic event handler that handles any events this object is listening to. **)
  method handleEvent : event -> unit meth

 (** Sets the max number of matches to fetch from the Matcher. **)
  method setMaxMatches : float -> unit meth

 (** Sets whether or not the first row should be highlighted by default. **)
  method setAutoHilite : bool -> unit meth

 (** Sets whether or not the up arrow can unhilite all rows. **)
  method setAllowFreeSelect : bool -> unit meth
 
 (**Sets whether or not to request new suggestions immediately after completion
 * of a suggestion.  **)
  method setTriggerSuggestionsOnUpdate : bool -> unit meth

 (** Sets the token to match against.  This triggers calls to the Matcher to
  fetch the matches (up to maxMatches), and then it triggers a call to 
  <code>renderer.renderRows()</code>. *)
  method setToken : js_string t -> js_string t -> unit meth

 (** Gets the current target HTML node for displaying autocomplete UI. **)
  method getTarget : unit -> js_string t meth

 (** Sets the current target HTML node for displaying autocomplete UI.
    Can be an implementation specific definition of how to display UI in 
    relation to the target node.*)
  method setTarget : js_string t -> unit meth

 (** Whether the autocomplete's renderer is open. **)
  method isOpen : unit -> bool meth

 (** Moves the hilite to the next row, or does nothing if we're already at the
 * end of the current set of matches.  Calls renderer.hiliteId() when there's
 * something to do.**)
  method hiliteNext : unit -> bool meth

 (** Moves the hilite to the previous row, or does nothing if we're already at
 * the beginning of the current set of matches.  Calls renderer.hiliteId()
 * when there's something to do.**)
  method hilitePrev : unit -> bool meth

 (** Hilites the id if it's valid, otherwise does nothing. **)
  method hiliteId : float -> bool meth

 (** If there are any current matches, this passes the hilited row data to
    <code>selectionHandler.selectRow()</code> **)
  method selectHilited : unit -> bool meth

 (**Clears out the token, rows, and hilite, and calls
    <code>renderer.dismiss()</code> **)
 method dismiss : unit -> unit meth

 (** Call a dismiss after a delay, if there's already a dismiss active, ignore. *)
  method dismissOnDelay : unit -> unit meth

 (** Call a dismiss after a delay, if there's already a dismiss active, ignore. *)
  method cancelDelayedDismiss : unit -> unit meth

 (** Cleans up the autocomplete object. *)
  method disposeInternal : unit -> unit meth

 (** Renders the rows and adds highlighting. *)
  method renderRows : js_string t array -> bool -> unit meth

 (** Gets the index corresponding to a particular id. **)
  method getIndexOfId : float -> float meth

 (** attachInputs / detachInputs **)
 
end

let autocomplete : (obj -> eventTarget -> obj -> autocomplete t) constr = 
  Js.Unsafe.variable "goog.ui.AutoComplete"

(** A row has been highlighted by the renderer. *)
let eventType_Hilite = "hilite"

(** A row has been selected by the renderer. *)
let eventType_Select = "select"

(**  A dismiss event has occurred. *)
let eventType_Dismiss = "dismiss"

(** Event that cancels a dismiss event. *)
let eventType_Dismiss = "canceldismiss"

(** Field value was updated.  A row field is included and is non-null when a
 * row has been selected.  The value of the row typically includes fields:
 * contactData and formattedValue as well as a toString function (though none 
 * of these fields are guaranteed to exist).  The row field may be used to
 * return custom-type row data. **)
let eventType_update = "update"
