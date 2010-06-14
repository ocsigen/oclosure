
(** 
    * OClosure Project - 2010
    * Class goog.ui.ButtonRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ControlRenderer  (* goog.ui.ControlRenderer *)
open State  (* goog.ui.Component.State *)
open State  (* goog.dom.a11y.State *)
open Role  (* goog.dom.a11y.Role *)
open A11y  (* goog.dom.a11y *)

class external buttonRenderer 
inherit controlRenderer:  <
getAriaRole : role(* | undefined *);
updateAriaState : element -> state -> boolean -> unit;
createDom : unit;
decorate : unit;
getValue : element -> string(* | undefined *);
setValue : element -> string -> unit;
getTooltip : element -> string(* | undefined *);
setTooltip : element -> string -> unit;
setCollapsed : button -> number -> unit;
getCssClass : unit;
> = "goog.ui.ButtonRenderer"
