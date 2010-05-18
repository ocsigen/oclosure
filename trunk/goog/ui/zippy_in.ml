(**
   * OClosure Project - 2010
   * Class goog.ui.Zippy
   *
   * Zippy widget. Expandable/collapsible container, 
   * clicking the header toggles the visibility of the content.
   *
   * @author : Oran Charles
   * @version 0.1
   * @see 'goog.events.EventTarget'
 *)
open EventTarget

(** JSOO.obj *)
type element = JSOO.obj

(** goog.ui.BrowserEvent**)
type browserEvent

class external zippy inherit eventTarget : string -> string -> 
< 
  (** Destroys widget and removes all event listeners. *)
  disposeInternal : unit -> unit ;

 (** Expands content pane. *)
 expand : unit -> unit ; 

 (** Collapses content pane. *)
 collapse : unit -> unit;

 (** Toggles expanded state. *)
 toggle : unit -> unit ;

 (** Sets expanded state. *)
 setExpanded : bool -> unit ;

 (** Whether the zippy is expanded. *)
 isExpanded : unit -> bool ;

 (*updateHeaderClassName_ : bool -> unit;
   onHeaderKeyDown_ : browserEvent -> unit;
   onHeaderClick_ : browserEvent -> unit*)
> = "goog.ui.Zippy" 


