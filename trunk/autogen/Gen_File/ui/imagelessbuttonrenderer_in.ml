
(** 
    * OClosure Project - 2010
    * Class goog.ui.ImagelessButtonRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open CustomButtonRenderer  (* goog.ui.CustomButtonRenderer *)
open ControlContent  (* goog.ui.ControlContent *)
open Button  (* goog.ui.Button *)

class external imagelessButtonRenderer 
inherit customButtonRenderer:  <
createDom : button -> element;
getContentElement : unit;
createButton : controlContent -> domHelper -> element;
hasBoxStructure : button -> element -> boolean;
getCssClass : string;
> = "goog.ui.ImagelessButtonRenderer"
