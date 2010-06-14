
(** 
    * OClosure Project - 2010
    * Class goog.ui.ControlRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open ControlContent  (* goog.ui.ControlContent *)
open State  (* goog.ui.Component.State *)
open Style  (* goog.style *)
open Object  (* goog.object *)
open Classes  (* goog.dom.classes *)
open State  (* goog.dom.a11y.State *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external controlRenderer :  <
getCustomRenderer : function -> string -> controlRenderer;
getAriaRole : role(* | undefined *);
createDom : control -> element;
getContentElement : element -> element;
enableClassName : control(* | element *) -> string -> boolean -> unit;
enableExtraClassName : control -> string -> boolean -> unit;
canDecorate : element -> boolean;
decorate : control -> element -> element;
initializeDom : control -> unit;
setAriaRole : element -> unit;
setAllowTextSelection : element -> boolean -> unit;
setRightToLeft : element -> boolean -> unit;
isFocusable : control -> boolean;
setFocusable : control -> boolean -> unit;
setVisible : element -> boolean -> unit;
setState : control -> state -> boolean -> unit;
updateAriaState : element -> state -> boolean -> unit;
setContent : element -> controlContent -> unit;
getKeyEventTarget : control -> element;
getCssClass : string;
getIe6ClassCombinations : (* Array[(* Array[string] *)] *);
getStructuralCssClass : string;
getClassNames : control -> (* Array[string] *);
getClassNamesForState : number -> (* Array[string] *)(* opt? *);
getStateFromClass : state -> string -> string(* | undefined *);
> = "goog.ui.ControlRenderer"
