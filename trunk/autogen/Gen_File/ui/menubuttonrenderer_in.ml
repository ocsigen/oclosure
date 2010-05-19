
(** 
    * OClosure Project - 2010
    * Class goog.ui.MenuButtonRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open MenuRenderer  (* goog.ui.MenuRenderer *)
open Menu  (* goog.ui.Menu *)
open INLINE_BLOCK_CLASSNAME  (* goog.ui.INLINE_BLOCK_CLASSNAME *)
open CustomButtonRenderer  (* goog.ui.CustomButtonRenderer *)
open Style  (* goog.style *)
open Dom  (* goog.dom *)

class external menuButtonRenderer 
inherit customButtonRenderer:  <
getContentElement : element -> element;
decorate : menuButton -> element -> element;
createButton : controlContent -> domHelper -> element;
createCaption : controlContent -> domHelper -> element;
wrapCaption : controlContent -> string -> domHelper -> element;
createDropdown : domHelper -> element;
getCssClass : string;
> = "goog.ui.MenuButtonRenderer"
