
(** 
    * OClosure Project - 2010
    * Class goog.ui.ContainerRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Registry  (* goog.ui.registry *)
open Separator  (* goog.ui.Separator *)
open Style  (* goog.style *)
open String  (* goog.string *)
open Classes  (* goog.dom.classes *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external containerRenderer :  <
getCustomRenderer : function -> string -> containerRenderer;
getAriaRole : undefined(* | string *);
hasTabIndex : element -> boolean;
enableTabIndex : element -> boolean -> unit;
createDom : container -> element;
getContentElement : element -> element;
canDecorate : element -> boolean;
decorate : container -> element -> element;
setStateFromClassName : container -> string -> string -> unit;
decorateChildren : container -> element -> unit;
getDecoratorForChild : element -> control(* opt? *);
initializeDom : container -> unit;
getKeyEventTarget : container -> element;
getCssClass : string;
getClassNames : container -> (* Array[string] *);
getDefaultOrientation : orientation;
> = "goog.ui.ContainerRenderer"
