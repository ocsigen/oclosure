
(** 
    * OClosure Project - 2010
    * Class goog.ui.CustomButtonRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open INLINE_BLOCK_CLASSNAME  (* goog.ui.INLINE_BLOCK_CLASSNAME *)
open ControlContent  (* goog.ui.ControlContent *)
open ButtonRenderer  (* goog.ui.ButtonRenderer *)
open String  (* goog.string *)
open Classes  (* goog.dom.classes *)
open Dom  (* goog.dom *)

class external customButtonRenderer 
inherit buttonRenderer:  <
createDom : button -> element;
getContentElement : element -> element;
createButton : controlContent -> domHelper -> element;
canDecorate : element -> boolean;
hasBoxStructure : button -> element -> boolean;
decorate : button -> element -> element;
getCssClass : string;
> = "goog.ui.CustomButtonRenderer"
