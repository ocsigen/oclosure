
(** 
    * OClosure Project - 2010
    * Class goog.ui.ToolbarRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ToolbarSeparatorRenderer  (* goog.ui.ToolbarSeparatorRenderer *)
open Separator  (* goog.ui.Separator *)
open ContainerRenderer  (* goog.ui.ContainerRenderer *)
open Orientation  (* goog.ui.Container.Orientation *)
open Role  (* goog.dom.a11y.Role *)

class external toolbarRenderer 
inherit containerRenderer:  <
getAriaRole : string;
getDecoratorForChild : element -> control(* opt? *);
getCssClass : string;
getDefaultOrientation : orientation;
> = "goog.ui.ToolbarRenderer"
