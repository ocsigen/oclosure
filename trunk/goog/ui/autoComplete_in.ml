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

class external autocomplete inherit eventTarget : JSOO.obj -> eventTarget -> JSOO.obj ->
<
  
  (** Returns the renderer that renders/shows/highlights/hides the autocomplete menu. *)
  getRenderer : unit -> eventTarget;

 (** Generic event handler that handles any events this object is listening to. **)
 handleEvent : event -> unit;

 (** Sets the max number of matches to fetch from the Matcher. **)
 setMaxMatches : float -> unit;

 (** Sets whether or not the first row should be highlighted by default. **)
 setAutoHilite : bool -> unit;

 (** Sets whether or not the up arrow can unhilite all rows. **)
 setAllowFreeSelect : bool -> unit;
 
 (**Sets whether or not to request new suggestions immediately after completion
 * of a suggestion.  **)
 setTriggerSuggestionsOnUpdate : bool -> unit;

 (** Sets the token to match against.  This triggers calls to the Matcher to
 * fetch the matches (up to maxMatches), and then it triggers a call to
 * <code>renderer.renderRows()</code>. **)
 setToken : string -> string -> unit;

 (** Gets the current target HTML node for displaying autocomplete UI. **)
 getTarget : unit -> string;

 (** Sets the current target HTML node for displaying autocomplete UI.
 * Can be an implementation specific definition of how to display UI in relation
 * to the target node.
 * This target will be passed into  <code>renderer.renderRows()</code> **)
 setTarget : string -> unit;

 (** Whether the autocomplete's renderer is open. **)
 isOpen : unit -> bool;

 (** Moves the hilite to the next row, or does nothing if we're already at the
 * end of the current set of matches.  Calls renderer.hiliteId() when there's
 * something to do.**)
 hiliteNext : unit -> bool;

 (** Moves the hilite to the previous row, or does nothing if we're already at
 * the beginning of the current set of matches.  Calls renderer.hiliteId()
 * when there's something to do.**)
 hilitePrev : unit -> bool;

 (** Hilites the id if it's valid, otherwise does nothing. **)
 hiliteId : float -> bool;

 (** If there are any current matches, this passes the hilited row data to
 * <code>selectionHandler.selectRow()</code> **)
 selectHilited : unit -> bool;

 (**Clears out the token, rows, and hilite, and calls
 * <code>renderer.dismiss()</code> **)
 dismiss : unit -> unit;

 (** Call a dismiss after a delay, if there's already a dismiss active, ignore. **)
 dismissOnDelay : unit -> unit;

 (** Call a dismiss after a delay, if there's already a dismiss active, ignore. **)
 cancelDelayedDismiss : unit -> unit;

 (** Cleans up the autocomplete object. **)
 disposeInternal : unit -> unit;

 (** Renders the rows and adds highlighting. **)
 renderRows : string array -> bool -> unit;

 (** Gets the index corresponding to a particular id. **)
 getIndexOfId : float -> float;

 (** attachInputs / detachInputs **)
 
> = "goog.ui.AutoComplete" 

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
