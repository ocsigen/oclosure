
(** 
    * OClosure Project - 2010
    * Class goog.ui.PaletteRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open ControlRenderer  (* goog.ui.ControlRenderer *)
open Style  (* goog.style *)
open Classes  (* goog.dom.classes *)
open A11y  (* goog.dom.a11y *)
open NodeType  (* goog.dom.NodeType *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external paletteRenderer 
inherit controlRenderer:  <
createDom : palette -> element;
createGrid : (* Array[node] *) -> size -> domHelper -> element;
createTable : (* Array[element] *) -> domHelper -> element;
createRow : (* Array[element] *) -> domHelper -> element;
createCell : node(* | string *) -> domHelper -> element;
canDecorate : element -> boolean;
decorate : palette -> element -> null;
setContent : element -> (* Array[node] *) -> unit;
getContainingItem : palette -> node -> node;
highlightCell : palette -> node -> boolean -> unit;
selectCell : palette -> node -> boolean -> unit;
getCssClass : string;
> = "goog.ui.PaletteRenderer"
