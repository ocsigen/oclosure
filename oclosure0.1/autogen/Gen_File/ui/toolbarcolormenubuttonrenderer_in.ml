
(** 
    * OClosure Project - 2010
    * Class goog.ui.ToolbarColorMenuButtonRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ToolbarMenuButtonRenderer  (* goog.ui.ToolbarMenuButtonRenderer *)
open MenuButtonRenderer  (* goog.ui.MenuButtonRenderer *)
open ControlContent  (* goog.ui.ControlContent *)
open ColorMenuButtonRenderer  (* goog.ui.ColorMenuButtonRenderer *)
open Classes  (* goog.dom.classes *)

class external toolbarColorMenuButtonRenderer 
inherit toolbarMenuButtonRenderer:  <
createCaption : controlContent -> domHelper -> element;
setValue : element -> (* any = "*" *) -> unit;
initializeDom : colorMenuButton -> unit;
> = "goog.ui.ToolbarColorMenuButtonRenderer"
