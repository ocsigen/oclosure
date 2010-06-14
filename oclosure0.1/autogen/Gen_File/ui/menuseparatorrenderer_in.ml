
(** 
    * OClosure Project - 2010
    * Class goog.ui.MenuSeparatorRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ControlRenderer  (* goog.ui.ControlRenderer *)
open ControlContent  (* goog.ui.ControlContent *)
open Classes  (* goog.dom.classes *)
open Dom  (* goog.dom *)

class external menuSeparatorRenderer 
inherit controlRenderer:  <
createDom : separator -> element;
decorate : separator -> element -> element;
setContent : element -> controlContent -> unit;
getCssClass : string;
> = "goog.ui.MenuSeparatorRenderer"
