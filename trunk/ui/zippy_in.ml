(*
 * Module goog.ui.Zippy
 * Zippy widget. Expandable/collapsible container, 
 * clicking the header toggles the visibility of the content.
 * Oran Charles - 2010
 *)

(** JSOO.obj **)
type element = JSOO.obj

(** goog.ui.BrowserEvent**)
type browserEvent

class external zippy : string -> string -> 
  < disposeInternal : unit -> unit ;
    expand : unit -> unit ; 
    toggle : unit -> unit ;
    setExpanded : bool -> unit ;
    (*isExpanded : unit -> bool ; 
    updateHeaderClassName_ : bool -> unit;
    onHeaderKeyDown_ : browserEvent -> unit;
    onHeaderClick_ : browserEvent -> unit*)
> = "goog.ui.Zippy" 

