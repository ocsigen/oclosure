
(** 
    * OClosure Project - 2010
    * Class goog.ui.TabRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ControlRenderer  (* goog.ui.ControlRenderer *)
open State  (* goog.ui.Component.State *)
open Role  (* goog.dom.a11y.Role *)

class external tabRenderer 
inherit controlRenderer:  <
getCssClass : string;
getAriaRole : role;
createDom : control -> element;
decorate : control -> element -> element;
getTooltip : element -> string;
setTooltip : element -> string(* | null| undefined *) -> unit;
> = "goog.ui.TabRenderer"
