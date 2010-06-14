
(** 
    * OClosure Project - 2010
    * Class goog.ui.AttachableMenu
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open MenuBase  (* goog.ui.MenuBase *)
open ItemEvent  (* goog.ui.ItemEvent *)
open KeyCodes  (* goog.events.KeyCodes *)
open State  (* goog.dom.a11y.State *)
open A11y  (* goog.dom.a11y *)

class external attachableMenu 
inherit menuBase: element(* opt? *) ->  <
disposeInternal : unit;
getItemClassName : string;
setItemClassName : string -> unit;
getSelectedItemClassName : string;
setSelectedItemClassName : string -> unit;
getSelectedItem : element;
setSelectedItem : element -> unit;
showPopupElement : unit;
getNextPrevItem : boolean -> element;
onMouseOver : event -> unit;
onMouseOut : event -> unit;
onMouseDown : event -> unit;
onMouseUp : event -> unit;
onKeyDown : keyEvent -> unit;
> = "goog.ui.AttachableMenu"
