
(** 
    * OClosure Project - 2010
    * Class goog.ui.SubMenuRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open MenuItemRenderer  (* goog.ui.MenuItemRenderer *)
open Menu  (* goog.ui.Menu *)
open Style  (* goog.style *)
open Classes  (* goog.dom.classes *)
open State  (* goog.dom.a11y.State *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)

class external subMenuRenderer 
inherit menuItemRenderer:  <
createDom : subMenu -> element;
decorate : subMenu -> element -> element;
initializeDom : subMenu -> unit;
> = "goog.ui.SubMenuRenderer"
