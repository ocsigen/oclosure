
(** 
    * OClosure Project - 2010
    * Class goog.ui.PopupMenu
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open PopupBase  (* goog.ui.PopupBase *)
open Menu  (* goog.ui.Menu *)
open EventType  (* goog.ui.Component.EventType *)
open Style  (* goog.style *)
open Map  (* goog.structs.Map *)
open Structs  (* goog.structs *)
open ViewportClientPosition  (* goog.positioning.ViewportClientPosition *)
open MenuAnchoredPosition  (* goog.positioning.MenuAnchoredPosition *)
open Corner  (* goog.positioning.Corner *)
open AnchoredViewportPosition  (* goog.positioning.AnchoredViewportPosition *)
open EventType  (* goog.events.EventType *)

class external popupMenu 
inherit menu: domHelper(* opt? *) -> menuRenderer(* opt? *) ->  <
decorateInternal : element -> unit;
enterDocument : unit;
attach : element -> corner(* opt? *) -> corner(* opt? *) -> boolean(* opt? *) -> box(* opt? *) -> unit;
createAttachTarget : element -> corner(* opt? *) -> corner(* opt? *) -> boolean(* opt? *) -> box(* opt? *) -> object;
getAttachTarget : element -> object;
isAttachTarget : element -> boolean;
getAttachedElement : element;
detachAll : unit;
detach : element -> unit;
setToggleMode : boolean -> unit;
getToggleMode : boolean;
showWithPosition : abstractPosition -> corner(* opt? *) -> box(* opt? *) -> element(* opt? *) -> unit;
showMenu : object -> number -> number -> unit;
showAt : number -> number -> corner(* opt? *) -> unit;
showAtElement : element -> corner -> corner(* opt? *) -> unit;
hide : unit;
wasRecentlyHidden : boolean;
onDocClick : browserEvent -> unit;
handleBlur : browserEvent -> unit;
disposeInternal : unit;
> = "goog.ui.PopupMenu"
