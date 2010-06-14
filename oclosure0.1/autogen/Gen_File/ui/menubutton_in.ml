
(** 
    * OClosure Project - 2010
    * Class goog.ui.MenuButton
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open MenuButtonRenderer  (* goog.ui.MenuButtonRenderer *)
open Menu  (* goog.ui.Menu *)
open ControlContent  (* goog.ui.ControlContent *)
open State  (* goog.ui.Component.State *)
open EventType  (* goog.ui.Component.EventType *)
open Button  (* goog.ui.Button *)
open Style  (* goog.style *)
open MenuAnchoredPosition  (* goog.positioning.MenuAnchoredPosition *)
open Corner  (* goog.positioning.Corner *)
open Rect  (* goog.math.Rect *)
open Box  (* goog.math.Box *)
open EventType  (* goog.events.KeyHandler.EventType *)
open KeyCodes  (* goog.events.KeyCodes *)
open EventType  (* goog.events.EventType *)
open State  (* goog.dom.a11y.State *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)

class external menuButton 
inherit button: controlContent -> menu(* opt? *) -> buttonRenderer(* opt? *) -> domHelper(* opt? *) ->  <
enterDocument : unit;
exitDocument : unit;
disposeInternal : unit;
handleMouseDown : event -> unit;
handleMouseUp : event -> unit;
performActionInternal : event -> boolean;
handleDocumentMouseDown : browserEvent -> unit;
containsElement : element -> boolean;
handleKeyEventInternal : unit;
handleMenuAction : event -> unit;
handleMenuBlur : event -> unit;
handleBlur : event -> unit;
getMenu : menu;
setMenu : menu(* opt? *) -> menu(* | undefined *);
addItem : menuItem(* | menuSeparator| control *) -> unit;
addItemAt : menuItem(* | menuSeparator *) -> number -> unit;
removeItem : menuItem(* | menuSeparator *) -> unit;
removeItemAt : number -> unit;
getItemAt : number -> menuItem(* opt? *);
getItemCount : number;
setVisible : boolean -> boolean(* opt? *) -> boolean;
setEnabled : boolean -> unit;
isAlignMenuToStart : boolean;
setAlignMenuToStart : boolean -> unit;
setScrollOnOverflow : boolean -> unit;
isScrollOnOverflow : boolean;
isFocusablePopupMenu : boolean;
setFocusablePopupMenu : boolean -> unit;
showMenu : unit;
hideMenu : unit;
setOpen : boolean -> unit;
positionMenu : unit;
handleHighlightItem : event -> unit;
handleUnHighlightItem : event -> unit;
> = "goog.ui.MenuButton"
