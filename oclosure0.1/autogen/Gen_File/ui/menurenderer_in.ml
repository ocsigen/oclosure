
(** 
    * OClosure Project - 2010
    * Class goog.ui.MenuRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Separator  (* goog.ui.Separator *)
open ContainerRenderer  (* goog.ui.ContainerRenderer *)
open State  (* goog.dom.a11y.State *)
open Role  (* goog.dom.a11y.Role *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)

class external menuRenderer 
inherit containerRenderer:  <
getAriaRole : string;
canDecorate : element -> boolean;
getDecoratorForChild : element -> control(* opt? *);
containsElement : menu -> element -> boolean;
getCssClass : string;
initializeDom : unit;
> = "goog.ui.MenuRenderer"
