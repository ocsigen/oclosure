
(** 
    * OClosure Project - 2010
    * Class goog.ui.ColorMenuButtonRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open MenuButtonRenderer  (* goog.ui.MenuButtonRenderer *)
open ControlContent  (* goog.ui.ControlContent *)
open Classes  (* goog.dom.classes *)
open Color  (* goog.color *)

class external colorMenuButtonRenderer 
inherit menuButtonRenderer:  <
createCaption : controlContent -> domHelper -> element;
wrapCaption : controlContent -> domHelper -> element;
setValue : element -> (* any = "*" *) -> unit;
setCaptionValue : element -> (* any = "*" *) -> unit;
initializeDom : colorMenuButton -> unit;
> = "goog.ui.ColorMenuButtonRenderer"
