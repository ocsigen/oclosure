
(** 
    * OClosure Project - 2010
    * Class goog.ui.MenuItemRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ControlRenderer  (* goog.ui.ControlRenderer *)
open ControlContent  (* goog.ui.ControlContent *)
open State  (* goog.ui.Component.State *)
open Classes  (* goog.dom.classes *)
open Role  (* goog.dom.a11y.Role *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)

class external menuItemRenderer 
inherit controlRenderer:  <
getAriaRole : unit;
createDom : control -> element;
getContentElement : unit;
decorate : control -> element -> element;
setContent : element -> controlContent -> unit;
hasContentStructure : element -> boolean;
createContent : controlContent -> domHelper -> element;
setSelectable : control -> element -> boolean -> unit;
setCheckable : control -> element -> boolean -> unit;
hasCheckBoxStructure : element -> boolean;
setEnableCheckBoxStructure : control -> element -> boolean -> unit;
getClassForState : state -> string(* | undefined *);
getStateFromClass : string -> state;
getCssClass : unit;
> = "goog.ui.MenuItemRenderer"
