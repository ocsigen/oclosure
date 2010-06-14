
(** 
    * OClosure Project - 2010
    * Class goog.ui.Css3ButtonRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open ButtonRenderer  (* goog.ui.ButtonRenderer *)
open ControlContent  (* goog.ui.ControlContent *)
open Button  (* goog.ui.Button *)
open Classes  (* goog.dom.classes *)
open TagName  (* goog.dom.TagName *)
open Dom  (* goog.dom *)

class external css3ButtonRenderer 
inherit buttonRenderer:  <
getContentElement : unit;
createDom : button -> element;
canDecorate : element -> boolean;
decorate : unit;
getCssClass : string;
> = "goog.ui.Css3ButtonRenderer"
