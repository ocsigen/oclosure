
(** 
    * OClosure Project - 2010
    * Class goog.ui.FlatMenuButtonRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open MenuRenderer  (* goog.ui.MenuRenderer *)
open MenuButton  (* goog.ui.MenuButton *)
open Menu  (* goog.ui.Menu *)
open INLINE_BLOCK_CLASSNAME  (* goog.ui.INLINE_BLOCK_CLASSNAME *)
open FlatButtonRenderer  (* goog.ui.FlatButtonRenderer *)
open ControlContent  (* goog.ui.ControlContent *)
open Style  (* goog.style *)

class external flatMenuButtonRenderer 
inherit flatButtonRenderer:  <
createDom : button -> element;
getContentElement : element -> element;
decorate : menuButton -> element -> element;
createCaption : controlContent -> domHelper -> element;
createDropdown : domHelper -> element;
getCssClass : string;
> = "goog.ui.FlatMenuButtonRenderer"
