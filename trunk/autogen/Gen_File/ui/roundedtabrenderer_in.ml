
(** 
    * OClosure Project - 2010
    * Class goog.ui.RoundedTabRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open TabRenderer  (* goog.ui.TabRenderer *)
open Location  (* goog.ui.TabBar.Location *)
open Tab  (* goog.ui.Tab *)
open Dom  (* goog.dom *)

class external roundedTabRenderer 
inherit tabRenderer:  <
getCssClass : string;
createDom : control -> element;
decorate : control -> element -> element;
createTab : domHelper -> controlContent -> location -> element;
createCaption : domHelper -> controlContent -> element;
createEdge : domHelper -> boolean -> element;
getContentElement : unit;
> = "goog.ui.RoundedTabRenderer"
