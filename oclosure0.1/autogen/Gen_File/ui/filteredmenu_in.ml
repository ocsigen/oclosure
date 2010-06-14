
(** 
    * OClosure Project - 2010
    * Class goog.ui.FilteredMenu
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Menu  (* goog.ui.Menu *)
open FilterObservingMenuItem  (* goog.ui.FilterObservingMenuItem *)
open String  (* goog.string *)
open KeyCodes  (* goog.events.KeyCodes *)
open InputHandler  (* goog.events.InputHandler *)
open Dom  (* goog.dom *)

class external filteredMenu 
inherit menu: menuRenderer(* opt? *) -> domHelper(* opt? *) ->  <
createDom : unit;
setVisible : unit;
disposeInternal : unit;
setFilterLabel : string(* opt? *) -> unit;
getFilterLabel : string;
setFilter : string(* opt? *) -> unit;
getFilter : string;
setFilterFromIndex : number -> unit;
getFilterFromIndex : number;
getEnteredItems : (* Array[string] *);
setAllowMultiple : boolean -> unit;
getAllowMultiple : boolean;
setPersistentVisibility : menuItem -> boolean -> unit;
hasPersistentVisibility : component -> boolean;
handleFilterEvent : browserEvent -> unit;
handleKeyEvent : keyEvent -> boolean;
setHighlightedIndex : number -> unit;
getContentElement : unit;
getFilterInputElement : element;
decorateInternal : unit;
> = "goog.ui.FilteredMenu"
