
(** 
    * OClosure Project - 2010
    * Class goog.ui.FlatButtonRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open INLINE_BLOCK_CLASSNAME  (* goog.ui.INLINE_BLOCK_CLASSNAME *)
open ButtonRenderer  (* goog.ui.ButtonRenderer *)
open Button  (* goog.ui.Button *)
open Classes  (* goog.dom.classes *)

class external flatButtonRenderer 
inherit buttonRenderer:  <
createDom : button -> element;
canDecorate : element -> boolean;
decorate : button -> element -> element;
getValue : element -> null;
getCssClass : string;
> = "goog.ui.FlatButtonRenderer"
