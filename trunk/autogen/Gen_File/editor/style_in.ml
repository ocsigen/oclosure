
(** 
    * OClosure Project - 2010
    * Class goog.editor.style
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Style  (* goog.style *)
open NodeType  (* goog.dom.NodeType *)
open Dom  (* goog.dom *)

class external getComputedOrCascadedStyle_ : node -> string ->  <
isDisplayBlock : node -> boolean;
isContainer : node -> boolean;
getContainer : node -> element;
> = "goog.editor.style.getComputedOrCascadedStyle_"
